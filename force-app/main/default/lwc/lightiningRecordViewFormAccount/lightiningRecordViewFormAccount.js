import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name';
import ACCNUM_FIELD from '@salesforce/schema/Account.AccountNumber';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FILED from '@salesforce/schema/Account.Industry';
import REVENUE_FILED from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FILED from '@salesforce/schema/Account.Phone';

export default class LightiningRecordViewFormAccount extends LightningElement {
    recordId = '0018b000020VMcxAAG';
    objectName = ACCOUNT_OBJECT;
    fields = {
        name: NAME_FIELD,
        accountNum: ACCNUM_FIELD,
        type : TYPE_FIELD,
        industry : INDUSTRY_FILED,
        revenue : REVENUE_FILED,
        phone : PHONE_FILED
    };
}