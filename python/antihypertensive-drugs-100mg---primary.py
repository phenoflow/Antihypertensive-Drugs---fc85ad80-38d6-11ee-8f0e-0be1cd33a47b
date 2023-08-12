# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"19223","system":"gprdproduct"},{"code":"33894","system":"gprdproduct"},{"code":"34893","system":"gprdproduct"},{"code":"35007","system":"gprdproduct"},{"code":"38434","system":"gprdproduct"},{"code":"41573","system":"gprdproduct"},{"code":"47159","system":"gprdproduct"},{"code":"49164","system":"gprdproduct"},{"code":"50509","system":"gprdproduct"},{"code":"52407","system":"gprdproduct"},{"code":"53271","system":"gprdproduct"},{"code":"53612","system":"gprdproduct"},{"code":"54037","system":"gprdproduct"},{"code":"54288","system":"gprdproduct"},{"code":"54928","system":"gprdproduct"},{"code":"55639","system":"gprdproduct"},{"code":"56038","system":"gprdproduct"},{"code":"56169","system":"gprdproduct"},{"code":"56356","system":"gprdproduct"},{"code":"56763","system":"gprdproduct"},{"code":"56855","system":"gprdproduct"},{"code":"57048","system":"gprdproduct"},{"code":"57346","system":"gprdproduct"},{"code":"58863","system":"gprdproduct"},{"code":"58871","system":"gprdproduct"},{"code":"59788","system":"gprdproduct"},{"code":"60010","system":"gprdproduct"},{"code":"61339","system":"gprdproduct"},{"code":"62564","system":"gprdproduct"},{"code":"63010","system":"gprdproduct"},{"code":"63030","system":"gprdproduct"},{"code":"63824","system":"gprdproduct"},{"code":"65","system":"gprdproduct"},{"code":"65102","system":"gprdproduct"},{"code":"66162","system":"gprdproduct"},{"code":"66669","system":"gprdproduct"},{"code":"756","system":"gprdproduct"},{"code":"7852","system":"gprdproduct"},{"code":"82","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
