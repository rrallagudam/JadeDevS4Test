@IsTest
public class MigrationResult_Tests {

    @IsTest public static void basicTests(){
        MigrationResult result = new MigrationResult();
		result.Success = false;
		result.Id = 'test_id';
		result.SObjectType = 'Opportunity';
		result.Message = 'Error message';
        System.assert(result != null);
        System.assertEquals(false, result.Success);
        System.assertEquals('test_id', result.Id);
        System.assertEquals('Opportunity', result.SObjectType);
        System.assertEquals('Error message', result.Message);
    }
}