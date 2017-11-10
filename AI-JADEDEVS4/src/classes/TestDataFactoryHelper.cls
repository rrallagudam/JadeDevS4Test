@isTest
public class TestDataFactoryHelper {
    public static String DEFAULT_COUNTRY = 'United States';
    public static String DEFAULT_STATE = 'Pennsylvania';
	public static Integer COUNTER = 0; 
	private static final Boolean LOG_DEBUG = true;
	    public enum FieldProperty {
        REFERENCE,
        REQUIRED
    }
	
    // Convenience method
    public static SObject createSObject(Schema.SObjectType type) {
        return createSObjects(type, 1, false)[0];
    }

    // Convenience method
    public static SObject createSObject(Schema.SObjectType type, Boolean setAllFields) {
        return createSObjects(type, 1, setAllFields)[0];
    }

    // Convenience method
    public static List<SObject> createSObjects(Schema.SObjectType type, Integer num) {
        return createSObjects(type, num, false);
    }

   public static List<SObject> createSObjects(Schema.SObjectType sType, Integer num, Boolean setAllFields) {

        // Create a list of empty SObjects
        List<SObject> sObjs = new List<SObject>();
        for (Integer i = 0; i < num; i++) {
            sObjs.add(sType.newSObject());
        }

        // Populate record fields with test values
        setFields(sObjs, setAllFields);

        // Do custom validation for the records if available
        String validatorClassName = getValidatorName(sType);

        // Get validator apex class
        Type t = Type.forName(validatorClassName);
        if (t != null) {
            try {
                // Instantiate validator
                SObjectValidator validator = (SObjectValidator) t.newInstance();
                validator.makeValid(sObjs);
            } catch (Exception e) {
                System.debug(LoggingLevel.ERROR, 'Error running custom code for ' + sType + ': ' + e.getMessage());
            }
        } else {
            System.debug('Class ' + validatorClassName + ' is not defined. Will not run custom code');
        }
        
        return sObjs;
    }

    /**
     * Given a record and a non-reference field attempts to set an appropriate value for the field
     * @author John Rogers, Traction on Demand
     * @date   2015-12-26
     * @param  sObj : The record
     * @param  field : The field to set
     */
    public static void setField(SObject sObj, Schema.SObjectField field) {
        Schema.DescribeFieldResult fieldDescribe = field.getDescribe();
        String fieldName = fieldDescribe.getName();
        Schema.DisplayType type = fieldDescribe.getType();

        if (fieldName.endsWith('Country')) {
            sObj.put(field, DEFAULT_COUNTRY);
        } else if (fieldName.endsWith('State')) {
            sObj.put(field, DEFAULT_STATE);
        } else if (type == Schema.DisplayType.Boolean) {
            sObj.put(field, false);
        } else if (type == Schema.DisplayType.Combobox
                || type == Schema.DisplayType.TextArea
                || type == Schema.DisplayType.String
                || type == Schema.DisplayType.base64) {
            sObj.put(field, COUNTER.format());
        } else if (type == Schema.DisplayType.Date) {
            sObj.put(field, Date.today());
        } else if (type == Schema.DisplayType.DateTime) {
            sObj.put(field, DateTime.now());
        } else if (type == Schema.DisplayType.Double 
                || type == Schema.DisplayType.Integer
                || type == Schema.DisplayType.Currency
                || type == Schema.DisplayType.Percent) {
            sObj.put(field, COUNTER);
        } else if (type == Schema.DisplayType.Email) {
            sObj.put(field, 'test' + COUNTER.format() + '@test.com');
        } else if (type == Schema.DisplayType.EncryptedString) {
            sObj.put(field, 's');
        } else if (type == Schema.DisplayType.MultiPicklist
                || type == Schema.DisplayType.Picklist) {
            sObj.put(field, fieldDescribe.getPicklistValues()[0].getValue());
        } else if (type == Schema.DisplayType.Phone) {
            sObj.put(field, '123-456-7890');
        } else if (fieldName == 'CommunityNickname' 
                && type == Schema.DisplayType.String) {
            Long rand = Math.roundtolong(Math.random() * 1000000);
            sObj.put(field, 'test' + String.valueof(rand));
        } else if (fieldName == 'UserName' 
                && type == Schema.DisplayType.String) {
            String rand = String.valueOf(Math.roundtolong(Math.random() * 1000000));
            String orgId = String.valueof(Userinfo.getOrganizationId());
            String dateString = String.valueof(Datetime.now());
            dateString = dateString.replace('-', '').replace(':', '').replace(' ', '');
            String name = 'test' + orgId + rand + dateString + '@test.com';
            sObj.put(field, name);
        } else if (type == Schema.DisplayType.Time) {
            sObj.put(field, Time.newInstance(0, 0, 0, 0));
        } else if (type == Schema.DisplayType.URL) {
            sObj.put(field, 'http://test' + COUNTER + '.com');
        } else {
            System.debug('Unhandled field type ' + type);
        }
    }


    public static void setFields(List<SObject> sObjs, Boolean setAllFields) {
        if (sObjs.isEmpty()) {
            return;
        }

        List<Schema.SObjectField> fields;
        if (setAllFields) {
            // Get all non-reference fields
            fields = getFields(sObjs[0].getSObjectType(),
                    new Set<FieldProperty> (),
                    new Set<FieldProperty> { FieldProperty.REFERENCE });
        } else {
            // Get all required non-reference fields
            fields = getFields(sObjs[0].getSObjectType(),
                    new Set<FieldProperty> { FieldProperty.REQUIRED },
                    new Set<FieldProperty> { FieldProperty.REFERENCE });            
        }

        for (Schema.SObjectField field : fields) {
            for (SObject sObj : sObjs) {
                setField(sObj, field);
            }
            COUNTER++;
        }
    }
    	/**
	*@description Returns a RecordTypeId used for Contact creation
	*@author Kevin Chow, Traction On Demand
	*@date October 4,2016
	*/
	public static Id getContactRecordType(String typeName){
		if(LOG_DEBUG)
			System.debug('ENTERED getContactRecordType');
		Map<String,Schema.RecordTypeInfo> listofRecords = Schema.SObjectType.Contact.getRecordTypeInfosByName();
		if(listofRecords.size() > 0) {
			Schema.RecordTypeInfo mRecordType = listofRecords.get(typename);
			if(mRecordType != null){
				return mRecordType.getRecordTypeId();
			}

		}
		return null;
	}

		/**
	*@description Returns a RecordTypeId used for Account creation
	*@author Kevin Chow, Traction On Demand
	*@date October 4,2016
	*/
	public static Id getAccountRecordType(String typeName){
		if(LOG_DEBUG)
			System.debug('ENTERED getAccountRecordType');
		Map<String,Schema.RecordTypeInfo> listofRecords = Schema.SObjectType.Account.getRecordTypeInfosByName();
		if(listofRecords.size() > 0) {
			Schema.RecordTypeInfo mRecordType = listofRecords.get(typename);
			if(mRecordType != null){
				return mRecordType.getRecordTypeId();
			}

		}
		return null;
	}

	/**
	*@description Returns a RecordTypeId used for Lead creation
	*@author Kevin Chow, Traction On Demand
	*@date October 4,2016
	*/
	public static Id getLeadRecordType(String typeName){
		if(LOG_DEBUG)
			System.debug('ENTERED getLeadRecordType');
		Map<String,Schema.RecordTypeInfo> listofRecords = Schema.SObjectType.Lead.getRecordTypeInfosByName();
		if(listofRecords.size() > 0) {
			Schema.RecordTypeInfo mRecordType = listofRecords.get(typename);
			if(mRecordType != null){
				return mRecordType.getRecordTypeId();
			}

		}
		return null;
	}

    /**
    *@description Returns a RecordTypeId used for Opportunity creation
    *@author Kevin Chow, Traction On Demand
    *@date October 12,2016
    */
    public static Id getOpportunityRecordType(String typeName){
        if(LOG_DEBUG)
            System.debug('ENTERED getLeadRecordType');
        Map<String,Schema.RecordTypeInfo> listofRecords = Schema.SObjectType.Opportunity.getRecordTypeInfosByName();
        if(listofRecords.size() > 0) {
            Schema.RecordTypeInfo mRecordType = listofRecords.get(typename);
            if(mRecordType != null){
                return mRecordType.getRecordTypeId();
            }

        }
        return null;
    }

        /**
     * Given an SObject type, return the SObject fields that satisfy the given criteria.
     *
     * By default excludes all fields with a default value or that are not settable.
     * 
     * @author John Rogers, Traction on Demand
     * @date   2015-12-26
     * @param  type : The SObject type
     * @param  includeTypes : All returned fields must be of the given type(s)
     * @param  excludeTypes : All returning fields must not be of the given type(s)
     * @return The list of fields that are of the given type(s)
     */
    private static List<Schema.SObjectField> getFields(Schema.SObjectType type, 
            Set<FieldProperty> includeTypes, Set<FieldProperty> excludeTypes) {
        // Get all fields for the type
        List<Schema.SObjectField> fields = type.getDescribe().fields.getMap().values();

        // Search for fields that satisfy the criteria
        List<Schema.SObjectField> results = new List<Schema.SObjectField>();
        for (Schema.SObjectField field : fields) {
            DescribeFieldResult fieldDescribe = field.getDescribe();

            // Ignore wierdo custom fields
            if (fieldDescribe.getName().contains('__pc')) {
                continue;
            }

            // Ignore fields that are not settable
            if (!fieldDescribe.isCreateable()) {
                continue;
            }

            // Ignore fields that are defaulted
            if (fieldDescribe.isDefaultedOnCreate() && fieldDescribe.getDefaultValue() != null) {
                continue;
            }

            // If searching for required fields and field isn't required
            if (includeTypes.contains(FieldProperty.REQUIRED) 
                    && fieldDescribe.isNillable()) {
                continue;
            }

            // If excluding required fields and field isn't required
            if (excludeTypes.contains(FieldProperty.REQUIRED) 
                    && !fieldDescribe.isNillable()) {
                continue;
            }

            // If searching for reference fields and field isn't reference field
            if (includeTypes.contains(FieldProperty.REFERENCE) && 
                    fieldDescribe.getType() != Schema.DisplayType.Reference) {
                continue;
            }

            // If excluding reference fields and field is a reference field
            if (excludeTypes.contains(FieldProperty.REFERENCE) && 
                    fieldDescribe.getType() == Schema.DisplayType.Reference) {
                continue;
            }

            results.add(field);
        }

        return results;
    }


    private static String getValidatorName(Schema.SObjectType type) {
        String objectName = type.getDescribe().getName();
        objectName = objectName.replace('__c', '');
        objectName = objectName.replace('_', '');
        return 'TestDataFactoryHelper.' + objectName + 'Validator';
    }
   public interface SObjectValidator {
        // Called to satisfy custom validation rules for the sObject
        void makeValid(List<SObject> sObjs);
    }

    /**
     * Custom validation for test account records
     * 
     * @author John Rogers
     */
    public class AccountValidator implements SObjectValidator {
        public void makeValid(List<SObject> sObjs) {
            System.debug('validating Account records: ' + sObjs);
            for (SObject sObj : sObjs) {
                COUNTER++;
                Account acc = (Account) sObj;
                acc.Name = 'Test Account ' + COUNTER;
            }
        }
    }

    /**
     * Custom validation for test lead records
     * 
     * @author John Rogers
     */
    public class LeadValidator implements SObjectValidator {
        public void makeValid(List<SObject> sObjs) {
            System.debug('validating Lead records: ' + sObjs);
            for (SObject sObj : sObjs) {
                COUNTER++;
                Lead lead = (Lead) sObj;
                lead.LastName = 'Test Lead ' + COUNTER;
            }
        }
    }

    public class ContactValidator implements SObjectValidator {
        public void makeValid(List<SObject> sObjs) {
            System.debug('validating Contact records: ' + sObjs);
            for (SObject sObj : sObjs) {
                COUNTER++;
                Contact con = (Contact) sObj;
                con.LastName = 'Test Contact ' + COUNTER;
            }
        }
    }

    public class OpportunityValidator implements SObjectValidator {
        public void makeValid(List<SObject> sObjs) {
            System.debug('validating Opportunity records: ' + sObjs);
            for (SObject sObj : sObjs) {
                COUNTER++;
                Opportunity opp = (Opportunity) sObj;
                opp.Name = 'Test Opportunity ' + COUNTER;
            }
        }
    }
}