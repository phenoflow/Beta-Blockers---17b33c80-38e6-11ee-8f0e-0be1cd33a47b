# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"11711","system":"gprdproduct"},{"code":"12054","system":"gprdproduct"},{"code":"1448","system":"gprdproduct"},{"code":"220","system":"gprdproduct"},{"code":"22912","system":"gprdproduct"},{"code":"23131","system":"gprdproduct"},{"code":"27486","system":"gprdproduct"},{"code":"27700","system":"gprdproduct"},{"code":"28128","system":"gprdproduct"},{"code":"297","system":"gprdproduct"},{"code":"3087","system":"gprdproduct"},{"code":"31214","system":"gprdproduct"},{"code":"3167","system":"gprdproduct"},{"code":"31776","system":"gprdproduct"},{"code":"32162","system":"gprdproduct"},{"code":"33644","system":"gprdproduct"},{"code":"34185","system":"gprdproduct"},{"code":"34208","system":"gprdproduct"},{"code":"34214","system":"gprdproduct"},{"code":"34378","system":"gprdproduct"},{"code":"34783","system":"gprdproduct"},{"code":"34804","system":"gprdproduct"},{"code":"34867","system":"gprdproduct"},{"code":"34868","system":"gprdproduct"},{"code":"34884","system":"gprdproduct"},{"code":"34945","system":"gprdproduct"},{"code":"34949","system":"gprdproduct"},{"code":"35938","system":"gprdproduct"},{"code":"36576","system":"gprdproduct"},{"code":"36603","system":"gprdproduct"},{"code":"38433","system":"gprdproduct"},{"code":"39233","system":"gprdproduct"},{"code":"40241","system":"gprdproduct"},{"code":"41555","system":"gprdproduct"},{"code":"43525","system":"gprdproduct"},{"code":"45297","system":"gprdproduct"},{"code":"45343","system":"gprdproduct"},{"code":"45494","system":"gprdproduct"},{"code":"48682","system":"gprdproduct"},{"code":"49863","system":"gprdproduct"},{"code":"52777","system":"gprdproduct"},{"code":"53177","system":"gprdproduct"},{"code":"54297","system":"gprdproduct"},{"code":"5478","system":"gprdproduct"},{"code":"55228","system":"gprdproduct"},{"code":"55416","system":"gprdproduct"},{"code":"55849","system":"gprdproduct"},{"code":"55949","system":"gprdproduct"},{"code":"56764","system":"gprdproduct"},{"code":"57342","system":"gprdproduct"},{"code":"57567","system":"gprdproduct"},{"code":"58297","system":"gprdproduct"},{"code":"58407","system":"gprdproduct"},{"code":"58491","system":"gprdproduct"},{"code":"59415","system":"gprdproduct"},{"code":"59597","system":"gprdproduct"},{"code":"60565","system":"gprdproduct"},{"code":"60934","system":"gprdproduct"},{"code":"61727","system":"gprdproduct"},{"code":"707","system":"gprdproduct"},{"code":"769","system":"gprdproduct"},{"code":"8987","system":"gprdproduct"},{"code":"9185","system":"gprdproduct"},{"code":"940","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-propanolol---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-propanolol---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-propanolol---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
