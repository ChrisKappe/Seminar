Set-ExecutionPolicy RemoteSigned
# Import the for the  cmdLet
Import-Module 'C:\Program Files\Microsoft Dynamics 365 Business Central\130\Service\NavAdminTool.ps1'
# Publish app to database
Publish-NAVApp -ServerInstance BC130 -Path "C:\Users\Admin\Desktop\AL-code\Seminar\D. E. Veloper_CSD Seminar_1.0.0.0.app" -SkipVerification
# Install in tenant
Install-NAVApp -ServerInstance BC130 -Name "Seminar"
# Uninstall the app - Delete the data
Uninstall-NAVApp  -ServerInstance BC130 -Name "Seminar" -DoNotSaveData 
# Remove the app from the database - but keep the tables
Unpublish-NAVApp -ServerInstance BC130 -Name "Seminar" 
# Synchronize the objekts in theh tenant
Sync-NAVTenant -ServerInstance BC130
# Remove the tables if the app is gone
Sync-NAVApp -ServerInstance BC130 -Name "Seminar" -Mode Clean