# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"11983","system":"gprdproduct"},{"code":"49491","system":"gprdproduct"},{"code":"53058","system":"gprdproduct"},{"code":"54733","system":"gprdproduct"},{"code":"54899","system":"gprdproduct"},{"code":"54942","system":"gprdproduct"},{"code":"54986","system":"gprdproduct"},{"code":"56162","system":"gprdproduct"},{"code":"56472","system":"gprdproduct"},{"code":"56473","system":"gprdproduct"},{"code":"56516","system":"gprdproduct"},{"code":"57701","system":"gprdproduct"},{"code":"57801","system":"gprdproduct"},{"code":"58843","system":"gprdproduct"},{"code":"58874","system":"gprdproduct"},{"code":"593","system":"gprdproduct"},{"code":"59770","system":"gprdproduct"},{"code":"59790","system":"gprdproduct"},{"code":"59972","system":"gprdproduct"},{"code":"60065","system":"gprdproduct"},{"code":"60684","system":"gprdproduct"},{"code":"6078","system":"gprdproduct"},{"code":"61117","system":"gprdproduct"},{"code":"61270","system":"gprdproduct"},{"code":"61693","system":"gprdproduct"},{"code":"63149","system":"gprdproduct"},{"code":"64602","system":"gprdproduct"},{"code":"65273","system":"gprdproduct"},{"code":"66060","system":"gprdproduct"},{"code":"97","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-erbumine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-erbumine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-erbumine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
