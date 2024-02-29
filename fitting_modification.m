name_data_nist_document="database_100_DOIs.xml";
data_nist_open = fopen(name_data_nist_document, 'r');
data_NIST = readstruct(name_data_nist_document);
fclose (data_nist_open);

name_to_save= "database_100_DOIs_modified_17082023.xml";
materials=data_NIST;

    try
        useful_data_nist_open = fopen(name_to_save, 'wt'); 
        writestruct(materials,name_to_save);                    
        fclose(useful_data_nist_open);
        fprintf("Data succesfully saved in %s. \n", name_to_save)
    catch
        fprintf("Saving data in %s was not succesful. \n", name_to_save)
    end