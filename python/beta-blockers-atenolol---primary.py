# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"19182","system":"gprdproduct"},{"code":"33092","system":"gprdproduct"},{"code":"33650","system":"gprdproduct"},{"code":"33850","system":"gprdproduct"},{"code":"34265","system":"gprdproduct"},{"code":"34365","system":"gprdproduct"},{"code":"34443","system":"gprdproduct"},{"code":"34695","system":"gprdproduct"},{"code":"34882","system":"gprdproduct"},{"code":"36261","system":"gprdproduct"},{"code":"5","system":"gprdproduct"},{"code":"52500","system":"gprdproduct"},{"code":"53204","system":"gprdproduct"},{"code":"53215","system":"gprdproduct"},{"code":"53414","system":"gprdproduct"},{"code":"54752","system":"gprdproduct"},{"code":"55778","system":"gprdproduct"},{"code":"57817","system":"gprdproduct"},{"code":"59695","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-atenolol---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-atenolol---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-atenolol---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
