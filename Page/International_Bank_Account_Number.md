WessexBankStatement.png header (from a fictitious bank ), showing the location of the account's IBAN]]

The INTERNATIONAL BANK ACCOUNT NUMBER (IBAN) is an internationally agreed system of identifying bank accounts across national borders to facilitate the communication and processing of cross border transactions with a reduced risk of transcription errors. It was originally adopted by the European Committee for Banking Standards (ECBS), and later as an international standard under ISO 13616:1997. The current standard is ISO 13616:2007, which indicates SWIFT as the formal registrar. Initially developed to facilitate payments within the European Union, it has been implemented by most European countries and numerous countries in the other parts of the world, mainly in the Middle East and in the Caribbean. As of February 2016, 69 countries were using the IBAN numbering system.[1]

The IBAN consists of up to 34 alphanumeric characters comprising: a country code; two check digits; and a number that includes the domestic bank account number, branch identifier, and potential routing information. The check digits enable a check of the bank account number to confirm its integrity before submitting a transaction.


Background

Before IBAN, differing national standards for bank account identification (i.e. bank, branch, routing codes, and account number) were confusing for some users. This often led to necessary routing information being missing from payments. Routing information as specified by ISO 9362 (also known as Business Identifier Codes (BIC code), SWIFT ID or SWIFT code, and SWIFT-BIC) does not require a specific format for the transaction so the identification of accounts and transaction types is left to agreements of the transaction partners. It also does not contain check digits, so errors of transcription were not detectable and it was not possible for a sending bank to validate the routing information prior to submitting the payment. Routing errors caused delayed payments and incurred extra costs to the sending and receiving banks and often to intermediate routing banks.[2]

In 1997, to overcome these difficulties, the International Organization for Standardization (ISO) published ISO 13616:1997.[3] This proposal had a degree of flexibility, which the European Committee for Banking Standards (ECBS) believed would make it unworkable, and they produced a "slimmed down" version of the standard which, amongst other things, permitted only upper-case letters and required that the IBAN for each country have a fixed length.[4] ISO 13616:1997 was subsequently withdrawn and replaced by ISO 13616:2003.[5] The standard was revised again in 2007 when it was split into two parts. ISO 13616-1:2007 "specifies the elements of an international bank account number (IBAN) used to facilitate the processing of data internationally in data interchange, in financial environments as well as within and between other industries" but "does not specify internal procedures, file organization techniques, storage media, languages, etc. to be used in its implementation".[6] ISO 13616-2:2007 describes "the Registration Authority (RA) responsible for the registry of IBAN formats that are compliant with ISO 13616-1 [and] the procedures for registering ISO 13616-compliant IBAN formats".[7] The official IBAN registrar under ISO 13616-2:2007 is SWIFT.[8]

IBAN imposes a flexible but regular format sufficient for account identification and contains validation information to avoid errors of transcription. It carries all the routing information needed to get a payment from one bank to another wherever it may be; it contains key bank account details such as country code, branch codes (known as sort codes in the UK and Ireland) and account numbers, and it contains _check digits_ which can be validated at source according to a single standard procedure.[9] Where used, IBANs have reduced trans-national money transfer errors to under 0.1% of total payments.


Structure

The IBAN consists of up to 34 alphanumeric characters, as follows:

-   country code using ISO 3166-1 alpha-2 – two letters,
-   check digits – two digits, and
-   BASIC BANK ACCOUNT NUMBER (BBAN) – up to 30 alphanumeric characters that are country-specific.[10]

The check digits enable a sanity check of the bank account number to confirm its integrity before submitting a transaction.

The IBAN should not contain spaces when transmitted electronically. When printed it is expressed in groups of four characters separated by a single space, the last group being of variable length as shown in the example below:[11]

  Country          IBAN formatting example
  ---------------- -----------------------------------
  Belgium          BE71 0961 2345 6769
  France           FR76 3000 6000 0112 3456 7890 189
  Germany          DE91 1000 0000 0123 4567 89
  Greece           GR96 0810 0010 0000 0123 4567 890
  Romania          RO09 BCYP 0000 0012 3456 7890
  Saudi Arabia     SA44 2000 0001 2345 6789 1234
  Spain            ES79 2100 0813 6101 2345 6789
  Switzerland      CH56 0483 5012 3456 7800 9
  United Kingdom   GB98 MIDL 0700 9312 3456 78

Permitted IBAN characters are the digits _0_ to _9_ and the 26 Latin alphabetic characters _A_ to _Z_.[12] This applies even in countries (e.g., Thailand) where these characters are not used in the national language.

Basic Bank Account Number

The Basic Bank Account Number (BBAN) format is decided by the national central bank or designated payment authority of each country. There is no consistency between the formats adopted. The national authority may register its BBAN format with SWIFT, but is not obliged to do so. It may adopt IBAN without registration. SWIFT also acts as the registration authority for the SWIFT system, which is used by most countries that have not adopted IBAN. A major difference between the two systems is that under SWIFT there is no requirement that BBANs used within a country be of a pre-defined length.

The BBAN must be of a fixed length for the country and comprise case-insensitive alphanumeric characters. It includes the domestic bank account number, branch identifier, and potential routing information. Each country can have a different national routing/account numbering system, up to a maximum of 30 alphanumeric characters.

Check digits

The check digits enable the sending bank (or its customer) to perform a sanity check of the routing destination and account number from a single string of data at the time of data entry.[13] This check is guaranteed to detect any instances where a single character has been omitted, duplicated, mistyped or where two characters have been transposed. Thus routing and account number errors are virtually eliminated.[14]


Processing

One of the design aims of the IBAN was to enable as much validation as possible to be done at the point of data entry.[15] In particular, the computer program that accepts an IBAN will be able to validate:

-   Country code
-   Number of characters in the IBAN correspond to the number specified for the country code
-   BBAN format specified for the country code
-   Account number, bank code and country code combination is compatible with the check digits

The check digits are calculated using MOD-97-10 as per ISO/IEC 7064:2003[16] (abbreviated to _mod-97_ in this article), which specifies a set of check character systems capable of protecting strings against errors which occur when people copy or key data. In particular, the standard states that the following can be detected:

-   All single substitution errors (the substitution of a single character for another, for example 4234 for 1234)
-   All or nearly all single (local) transposition errors (the transposition of two single characters, either adjacent or with one character between them, for example 12354 or 12543 for 12345)
-   All or nearly all shift errors (shifts of the whole string to the left or right)
-   High proportion of double substitution errors (two separate single substitution errors in the same string, for example 7234587 for 1234567)
-   High proportion of all other errors

The underlying rules for IBANs is that the account-servicing financial institution should issue an IBAN, as there are a number of areas where different IBANs could be generated from the same account and branch numbers that would satisfy the generic IBAN validation rules. In particular cases where 00 is a valid check digit, 97 will not be a valid check digit, likewise, if 01 is a valid check digit, 98 will not be a valid check digit, similarly with 02 and 99.

The UN CEFACT TBG5 has published a free IBAN validation service in 32 languages for all 57 countries that have adopted the IBAN standard.[17] They have also published the Javascript source code of the verification algorithm.[18]

An English language IBAN checker for ECBS member country bank accounts is available on its website.[19]

Algorithms

Validating the IBAN

An IBAN is validated by converting it into an integer and performing a basic _mod-97_ operation (as described in ISO 7064) on it. If the IBAN is valid, the remainder equals 1.[20] The algorithm of IBAN validation is as follows:[21]

1.  Check that the total IBAN length is correct as per the country. If not, the IBAN is invalid
2.  Move the four initial characters to the end of the string
3.  Replace each letter in the string with two digits, thereby expanding the string, where A = 10, B = 11, ..., Z = 35
4.  Interpret the string as a decimal integer and compute the remainder of that number on division by 97

If the remainder is 1, the check digit test is passed and the IBAN might be valid.

Example (fictitious United Kingdom bank, sort code 12-34-56, account number 98765432):

    {|

|• IBAN: ||||align="right"|GB82 WEST 1234 5698 7654 32|| |- |• Rearrange: ||||align="right"| W E S T12345698765432 G B82|| |- |• Convert to integer: ||||align="right"|3214282912345698765432161182|| |- |• Compute remainder: ||||align="right"|3214282912345698765432161182|| mod 97 = 1 |}

Generating IBAN check digits

According to the ECBS "generation of the IBAN shall be the exclusive responsibility of the bank/branch servicing the account".[22] The ECBS document replicates part of the ISO/IEC 7064:2003 standard as a method for generating check digits in the range 02 to 98. Check digits in the ranges 00 to 96, 01 to 97, and 03 to 99 will also provide validation of an IBAN, but the standard is silent as to whether or not these ranges may be used.

The preferred algorithm is:[23]

1.  Check that the total IBAN length is correct as per the country. If not, the IBAN is invalid.
2.  Replace the two check digits by 00 (e.g., GB00 for the UK).
3.  Move the four initial characters to the end of the string.
4.  Replace the letters in the string with digits, expanding the string as necessary, such that A or a = 10, B or b = 11, and Z or z = 35. Each alphabetic character is therefore replaced by 2 digits
5.  Convert the string to an integer (i.e. ignore leading zeroes).
6.  Calculate _mod-97_ of the new number, which results in the remainder.
7.  Subtract the remainder from 98, and use the result for the two check digits. If the result is a single digit number, pad it with a leading 0 to make a two-digit number.

Modulo operation on IBAN

Any computer programming language or software package that is used to compute _D_ mod _97_ directly must have the ability to handle integers of more than 30 digits. In practice, this can only be done by software that either supports arbitrary-precision arithmetic or that can handle 220 bit (unsigned) integers,[24] features that are often not standard. If the application software in use does not provide the ability to handle integers of this size, the modulo operation can be performed in a piece-wise manner (as is the case with the UN CEFACT TBG5 Javascript program).

Piece-wise calculation can be done in many ways. One such way is as follows:[25]

1.  Starting from the leftmost digit of _D_, construct a number using the first 9 digits and call it _N_.[26]
2.  Calculate _N_ mod _97_.
3.  Construct a new 9-digit _N_ by concatenating above result (step 2) with the next 7 digits of _D_. If there are fewer than 7 digits remaining in _D_ but at least one, then construct a new _N_, which will have less than 9 digits, from the above result (step 2) followed by the remaining digits of _D_
4.  Repeat steps 2–3 until all the digits of _D_ have been processed

The result of the final calculation in step 2 will be _D_ mod 97 = _N_ mod _97_.

Example

In this example, the above algorithm for _D_ mod 97 will be applied to _D_ = 3214282912345698765432161182. (The digits are colour-coded to aid the description below.) If the result is one, the IBAN corresponding to _D_ passes the check digit test.

1.  Construct _N_ from the first 9 digits of D

        _N_ = 321428291

2.  Calculate _N_ mod 97 = 70
3.  Construct a new 9-digit _N_ from the above result (step 2) followed by the next 7 digits of _D_.

        _N_ = 702345698

4.  Calculate _N_ mod 97 = 29
5.  Construct a new 9-digit _N_ from the above result (step 4) followed by the next 7 digits of _D_.

        _N_ = 297654321

6.  Calculate _N_ mod 97 = 24
7.  Construct a new _N_ from the above result (step 6) followed by the remaining 5 digits of _D_.

        _N_ = 2461182

8.  Calculate _N_ mod 97 = 1

From step 8, the final result is _D_ mod 97 = 1 and the IBAN has passed this check digit test.


Adoption

Adoption of the IBAN (as of January 1, 2014)

International bank transactions use either an IBAN or the ISO 9362 Business Identifier Code system (BIC or SWIFT code) in conjunction with the BBAN (Basic Bank Account Number).

EEA and territories

The banks of most countries in Europe publish account numbers using both the IBAN format and the nationally recognised identifiers, this being mandatory within the European Economic Area.[27]

Day-to-day administration of banking in British Overseas Territories varies from territory to territory; some, such as South Georgia and the South Sandwich Islands, have too small a population to warrant a banking system while others, such as Bermuda, have a thriving financial sector.[28] The use of the IBAN is up to the local government—Gibraltar, being part of the European Union is required to use the IBAN,[29], as are the Crown dependencies, which use the British clearing system,[30] and the British Virgin Islands have chosen to do so. , no other British Overseas Territories have chosen to use the IBAN.[31] Banks in the Caribbean Netherlands also do not use the IBAN.

Euro_banknotes_2002.png.]]

Single Euro Payments Area

The IBAN designation scheme was chosen as the foundation for electronic straight-through processing in the European Economic Area. The European Parliament mandated that a bank charge needs to be the same amount for domestic credit transfers as for cross-border credit transfers regulated in decision 2560/2001 (updated in 924/2009).[32] This regulation took effect in 2003. Only payments in euro up to €12,500 to a bank account designated by its IBAN were covered by the regulation.

The Euro Payments regulation has been the foundation for the decision to create a Single Euro Payments Area (SEPA). The European Central Bank has created the TARGET2 interbank network that unifies the technical infrastructure of the 26 central banks of the European Union (although Sweden and the UK have opted out). SEPA is a self-regulatory initiative by the banking sector of Europe as represented in the European Payments Council (EPC). The European Union made the scheme mandatory through the Payment Services Directive published in 2007. Since January 2008, all countries must support SEPA credit transfer, and SEPA direct debit must be supported since November 2009. The regulation on SEPA payments increases the charge cap (same price for domestic payments as for cross-border payments) to €50,000.

With a further decision of the European Parliament, the IBAN scheme for bank accounts fully replaced the domestic numbering schemes from 31 December 2012.[33] On 16 December 2010, the European Commission published proposed regulations that will make IBAN support mandatory for domestic credit transfer by 2013 and for domestic direct debit by 2014 (with a 12 and 24 months transition period respectively).[34] Some countries have already replaced their traditional bank account scheme by IBAN. This includes Switzerland where IBAN was introduced for national credit transfer on 1 January 2006 and the support for the old bank account numbers has not been required from 1 January 2010.[35]

Based on a 20 December 2011 memorandum,[36] the EU parliament resolved the mandatory dates for the adoption of the IBAN on 14 February 2012.[37] From 1 February 2014, all national systems for credit transfer and direct debit must be abolished and replaced by an IBAN-based system.[38] This will be extended to all cross-border SEPA transactions from 1 February 2016 (Article 5 Section 7).[39] After these dates the IBAN will be sufficient to identify an account for home and foreign financial transactions in SEPA countries and banks will no longer be permitted to require that the customer supply the BIC for the beneficiary's bank.

In the run-up to the 1 February 2014 deadline, it became apparent that many old bank account numbers had not been allocated IBANs—an issue that has to be addressed on a country-by-country basis. In Germany, for example, Deutsche Bundesbank and the German Banking Industry Committee require that all holders of German bank codes ("Bankleitzahl") publish the specifics of their IBAN generation format taking into account not only the generation of check digits but also the handling of legacy bank codes, thereby enabling third parties to generate IBANs independently of the bank.[40] The first such catalogue was published in June 2013 as a variant of the old bank code catalog ("Bankleitzahlendatei").[41]

Non-EEA

Banks in numerous non-European countries including most states of the Middle East, North Africa and the Caribbean have implemented the IBAN format for account identification.[42] In some countries the IBAN is used on an _ad hoc_ basis, an example being Ukraine where account numbers used for international transfers of four of the national banks have additional aliases that follow the IBAN format as a precursor to formal SWIFT registration.[43]

The degree to which bank verifies the validity of a recipient's bank account number depends of the configuration of the transmitting bank's software—many major software packages supply bank account validation as a standard function.[44] Some banks outside Europe may not recognize IBAN, though this is expected to diminish with time. Non-European banks usually accept IBANs for accounts in Europe, although they might not treat IBANs differently from other foreign bank account numbers. In particular, they might not check the IBAN's validity prior to sending the transfer.[45]

Banks in the United States do not use IBAN as account numbers for U.S. accounts.[46] Any adoption of the IBAN standard by U.S. banks would likely be initiated by ANSI ASC X9, the U.S. financial services standards development organization: a working group (X9B20) was established as an X9 subcommittee to generate an IBAN construction for U.S. bank accounts.[47]

Canadian financial institutions have not adopted IBAN and use routing numbers issued by Payments Canada for domestic transfers, and SWIFT for international transfers. There is no formal governmental or private sector regulatory requirement in Canada for the major banks to use IBAN.

Australia and New Zealand do not use IBAN. They use Bank State Branch codes for domestic transfers and SWIFT for international transfers.[48]

IBAN formats by country

This table summarises the IBAN formats by country:[49]

-   The _kk_ after the two-character ISO country code represents the check digits calculated from the rest of the IBAN characters. If it is a constant for the country concerned, this will be stated in the Comments column. This happens where the BBAN has its own check digits that use the same algorithm as the IBAN check digits
-   The BBAN format column shows the format of the BBAN part of an IBAN in terms of upper case alpha characters (A–Z) denoted by "a", numeric characters (0–9) denoted by "n" and mixed case alphanumeric characters (a–z, A–Z, 0–9) denoted by "c". For example, the Bulgarian BBAN (4a,6n,8c) consists of 4 alpha characters, followed by 6 numeric characters, then by 8 mixed-case alpha-numeric characters
-   Descriptions in the _Comments_ field have been standardised with country specific names in brackets. The format of the various fields can be deduced from the BBAN field
-   Countries that are planning to introduce the IBAN are shown in _italics_ with the planned date of introduction in BOLD

+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Country                 | Chars | BBAN Format | IBAN Fields | Comment                                                                           |
+=========================+=======+=============+=============+===================================================================================+
| Albania                 | 28    | 8n,16c      |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = National check digit                                                            |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Andorra                 | 24    | 8n,12c      |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Austria                 | 20    | 16n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Azerbaijan              | 28    | 4c,20n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Bahrain                 | 22    | 4a,14c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| _Belarus_               | 28    | 4c, 20n     |   aaaa      | = National bank or branch code                                                    |
| _July 4, 2017_[50]      |       |             |             | a = Balance account number                                                        |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Belgium                 | 16    | 12n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Bosnia and Herzegovina  | 20    | 16n         |             | = IBAN check digits (always "39")                                                 |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Brazil                  | 29    | 23n,1a,1c   |     n       | = IBAN check digits (Calculated by MOD 97-10)                                     |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = Account type (Cheque account, Savings account etc.)                             |
|                         |       |             |             | n = Owner account number ("1", "2" etc.){{cite journal                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Bulgaria                | 22    | 4a,6n,8c    |             | = BIC bank code                                                                   |
|                         |       |             |             | = Branch (BAE) number                                                             |
|                         |       |             |             | = Account type                                                                    |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Costa Rica              | 22    | 18n         |  0          | 0 = always zero                                                                   |
|                         |       |             |             | = bank code                                                                       |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Croatia                 | 21    | 17n         |             | = Bank code                                                                       |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Cyprus                  | 28    | 8n,16c      |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Czech Republic          | 24    | 20n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number prefix                                                           |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Denmark                 | 18    | 14n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Dominican Republic      | 28    | 4a,20n      |             | = Bank identifier                                                                 |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| East Timor              | 23    | 19n         |             | = IBAN check digits (always = "38")                                               |
|                         |       |             |             | = Bank identifier                                                                 |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Estonia                 | 20    | 16n         |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digit                                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Faroe Islands[51]       | 18    | 14n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digit                                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Finland                 | 18    | 14n         |             | = Bank and branch code                                                            |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digit                                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| France[52]              | 27    | 10n,11c,2n  |             | = National bank code                                                              |
|                         |       |             |             | = Branch code (fr:code guichet)                                                   |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits (:fr:clé RIB)                                             |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Georgia                 | 22    | 2c,16n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Germany                 | 22    | 18n         |             | = Bank and branch identifier (:de:Bankleitzahl or BLZ)                            |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Gibraltar               | 23    | 4a,15c      |             | = BIC bank code                                                                   |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Greece                  | 27    | 7n,16c      |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Greenland[53]           | 18    | 14n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Guatemala [54]          | 28    | 4c,20c      |   mm        | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | m = Currency                                                                      |
|                         |       |             |             | = Account type                                                                    |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Hungary                 | 28    | 24n         |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digit                                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Iceland                 | 26    | 22n         |             | = National bank code, including branch code                                       |
|                         |       |             |             | = Account type code                                                               |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = Account holder's _kennitala_ (national identification number)                   |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Ireland                 | 22    | 4c,14n      |  aaaa       | a = BIC bank code                                                                 |
|                         |       |             |             | = Bank/branch code (sort code)                                                    |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Israel                  | 23    | 19n         |  n nn       | = National bank code                                                              |
|                         |       |             |             | n = Branch number                                                                 |
|                         |       |             |             | = Account number 13 digits (padded with zeros)                                    |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Italy                   | 27    | 1a,10n,12c  |             | = Check char (CIN)                                                                |
|                         |       |             |             | = National bank code (Associazione Bancaria Italiana or _Codice ABI_)             |
|                         |       |             |             | = Branch code (:it:Coordinate bancarie or _CAB_ – _Codice d'Avviamento Bancario_) |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Jordan[55]              | 30    | 4a,22n      |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Kazakhstan              | 20    | 3n,13c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Kosovo                  | 20    | 4n,10n,2n   |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Kuwait                  | 30    | 4a,22c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number.                                                                 |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Latvia                  | 21    | 4a,13c      |             | = BIC Bank code                                                                   |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Lebanon                 | 28    | 4n,20c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Liechtenstein           | 21    | 5n,12c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Lithuania               | 20    | 16n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Luxembourg              | 20    | 3n,13c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| North Macedonia         | 19    | 3n,10c,2n   |             | = IBAN check digits (always = "07")                                               |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Malta                   | 31    | 4a,5n,18c   |             | = BIC bank code                                                                   |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Mauritania              | 27    | 23n         |             | = IBAN check digits (always "13")                                                 |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Branch code (fr:code guichet)                                                   |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits (:fr:clé RIB)                                             |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Mauritius               | 30    | 4a,19n,3a   |    000m mm  | = National bank code                                                              |
|                         |       |             |             | = Branch identifier                                                               |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | 0 = Zeroes                                                                        |
|                         |       |             |             | m = Currency Symbol                                                               |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Monaco                  | 27    | 10n,11c,2n  |             | = National bank code                                                              |
|                         |       |             |             | = Branch code (fr:code guichet)                                                   |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits (:fr:clé RIB).                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Moldova                 | 24    | 2c,18c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Montenegro              | 22    | 18n         |             | = IBAN check digits (always = "25")                                               |
|                         |       |             |             | = Bank code                                                                       |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Netherlands[56]         | 18    | 4a,10n      |             | = BIC Bank code                                                                   |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Norway                  | 15    | 11n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = Modulo-11 national check digit                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Pakistan                | 24    | 4c,16n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Palestinian territories | 29    | 4c,21n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = Not specified                                                                   |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Poland                  | 28    | 24n         |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = National check digit                                                            |
|                         |       |             |             | = Account number,                                                                 |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Portugal                | 25    | 21n         |             | = IBAN check digits (always = "50")                                               |
|                         |       |             |             | = National bank code (numeric only)                                               |
|                         |       |             |             | = Branch code (numeric only)                                                      |
|                         |       |             |             | = Account number (numeric only)                                                   |
|                         |       |             |             | = National check digits (numeric only)                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Qatar                   | 29    | 4a,21c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number{{cite journal                                                    |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Romania                 | 24    | 4a,16c      |             | = BIC Bank code (first four alpha characters)                                     |
|                         |       |             |             | = Branch code and account number (bank-specific format)                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| San Marino              | 27    | 1a,10n,12c  |             | = Check char (:it:CIN)                                                            |
|                         |       |             |             | = National bank code (:it:Associazione bancaria italiana or _Codice ABI_)         |
|                         |       |             |             | = Branch code (:it:Coordinate bancarie or _CAB_ – _Codice d'Avviamento Bancario_) |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Saudi Arabia            | 24    | 2n,18c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number preceded by zeros, if required                                   |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Serbia                  | 22    | 18n         |             | = IBAN check digits (always = "35") = National bank code                          |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = Account check digits                                                            |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Slovakia                | 24    | 20n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number prefix                                                           |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Slovenia                | 19    | 15n         |             | = IBAN check digits (always = "56")                                               |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
|                         |       |             |             | = National check digits                                                           |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Spain                   | 24    | 20n         |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Check digits                                                                    |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Sweden                  | 24    | 20n         |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Switzerland             | 21    | 5n,12c      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Tunisia                 | 24    | 20n         |             | = IBAN check digits (always "59")                                                 |
|                         |       |             |             | = National bank code                                                              |
|                         |       |             |             | = Branch code                                                                     |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Turkey                  | 26    | 5n,17c      |             | = National bank code                                                              |
|                         |       |             |             | = Reserved for future use (currently "0")                                         |
|                         |       |             |             | = Account number <!-- Commented out until official launch of the IBAN             |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Ukraine[57]             | 29    | 6n,19c      |   bbcc      | = National bank code                                                              |
|                         |       |             |             | = Account number preceded by zeros, if required -->                               |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| United Arab Emirates    | 23    | 3n,16n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| United Kingdom[58]      | 22    | 4a,14n      |             | = BIC bank code                                                                   |
|                         |       |             |             | = Bank and branch code (sort code)                                                |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Vatican City[59]        | 22    | 3n,15n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+
| Virgin Islands, British | 24    | 4c,16n      |             | = National bank code                                                              |
|                         |       |             |             | = Account number                                                                  |
+-------------------------+-------+-------------+-------------+-----------------------------------------------------------------------------------+

In addition to the above list, Nordea has catalogued IBANs for countries listed below.[60]

In this list

-   "kk" represent the IBAN checksum
-   "a" represents an alphabetic character
-   "n" represents a numeric character
-   "b" represents a bank code character
-   "c" represents an account digit.
-   "0" represents a "0" character.

  Country        Chars   Example                                Comments
  -------------- ------- -------------------------------------- -----------------------------------------------
  Algeria        24      DZkk nnnn nnnn nnnn nnnn nnnn
  Angola         25      AOkk nnnn nnnn nnnn nnnn nnnn n
  Benin          28      BJkk annn nnnn nnnn nnnn nnnn nnnn
  Burkina Faso   28      BFkk nnnn nnnn nnnn nnnn nnnn nnnn
  Burundi        16      BIkk nnnn nnnn nnnn
  Cameroon       27      CMkk nnnn nnnn nnnn nnnn nnnn nnn
  Cape Verde     25      CVkk nnnn nnnn nnnn nnnn nnnn n
  Iran           26      IRkk 0bb0 nnnn nnnn nnnn nnnn nn
  Ivory Coast    28      CIkk annn nnnn nnnn nnnn nnnn nnnn
  Madagascar     27      MGkk nnnn nnnn nnnn nnnn nnnn nnn      this format is identical to the French format
  Mali           28      MLkk annn nnnn nnnn nnnn nnnn nnnn
  Mozambique     25      MZkk nnnn nnnn nnnn nnnn nnnn n
  Senegal        28      SNkk annn nnnn nnnn nnnn nnnn nnnn
  Ukraine        29      UAkk bbbb bbcc cccc cccc cccc cccc c

Addition list of countries, in the process of introducing the IBAN retrieved from SWIFT partner website are listed below.[61]

In this list

-   "kk" represent the IBAN checksum
-   "a" represents an alphabetic character
-   "n" represents a numeric character

  Country     Chars   Example
  ----------- ------- -----------------------------------------
  Comoros     27      KMkk nnnn nnnn nnnn nnnn nnnn nnn
  Chad        27      TDkk nnnn nnnn nnnn nnnn nnnn nnn
  Congo       27      CGkk nnnn nnnn nnnn nnnn nnnn nnn
  Egypt       27      EGkk nnnn nnnn nnnn nnnn nnnn nnn
  Gabon       27      GAkk nnnn nnnn nnnn nnnn nnnn nnn
  Honduras    28      HNkk aaaa nnnn nnnn nnnn nnnn nnnn
  Morocco     28      MAkk nnnn nnnn nnnn nnnn nnnn nnnn
  Nicaragua   32      NIkk aaaa nnnn nnnn nnnn nnnn nnnn nnnn
  Niger       28      NEkk aann nnnn nnnn nnnn nnnn nnnn
  Togo        28      TGkk aann nnnn nnnn nnnn nnnn nnnn


Criticism

There is criticism about the length and readability of IBAN. Printed on paper the IBAN is often difficult to read. Therefore, it is popular to group the IBAN with four symbols. However, for electronic documents (e.g. PDF invoice) the copy and paste of grouped IBAN can result in errors with online banking forms. However, most modern bank institutes allow and detect the copy and paste of both grouped and ungrouped IBAN.


See also

-   Bank card number
-   Bank regulation
-   ABA routing transit number
-   Routing number (Canada)


Notes


References


External links

-   Official ISO 13616 Registry Society for Worldwide Interbank Financial Telecommunication (SWIFT)
-   ISO 13616-1:2007 International Organization for Standardization (ISO)
-   IBAN Implementation Guidelines State Bank of Pakistan, 15 May 2012
-   _Check digits (or characters) are a 'checksum' on a number to help prevent manual typing errors. in PHP_
-   _Online database Swift, BIC, BIN or Bank Name search_ Swift, BIC, BIN or Bank Name search

Category:Banking terms Category:Financial regulation Category:ISO standards Category:Bank codes Category:Checksum algorithms

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20] In equations, the remainder of _A_ divided by _B_ is denoted , 14 mod 12 .}} See Remainders.

[21]

[22]

[23]

[24] The maximum length of _D_ in (decimal) digits for the fully generic IBAN with 34 alphanumeric digits (two of which, the check digits, can, however, only be numeric) is 66}}. 2²²⁰ is equal to 1.7 × 10⁶⁶, from which it can be inferred that 220 bit unsigned integers can accommodate all unsigned integers of 66 digits. This is provided in C by a long long long int on a typical modern computer with 32-bit ints.

[25]

[26] 2³¹ is approximately equal to , making it possible for any 9-digit integer to be handled using 32 bit integer arithmetic

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51] Registered at SWIFT as part of Denmark, but with its own country code.

[52] French Guyana, French Polynesia, French Southern Territories, Guadeloupe, Martinique, Mayotte, New Caledonia, Réunion, Saint Barthélemy, Saint Martin (French part), Saint Pierre and Miquelon, and Wallis and Futuna Islands have their own ISO country code but use "FR" as their IBAN country code.

[53]

[54]

[55]

[56] Not applicable to Aruba, Curaçao, Sint Maarten, and the Caribbean Netherlands.

[57] Ukraine has not registered its IBAN format in SWIFT (as of 27 March 2013). However IBAN national format has been registered in Ukrainian internal standard organization.1. Usage is optional for banks.

[58] The United Kingdom of Great Britain and Northern Ireland, the Isle of Man and the Bailiwicks of Guernsey and Jersey use this format. British Overseas Territories have their own formats — only Gibraltar and the British Virgin Islands use IBANs.

[59]

[60]

[61]