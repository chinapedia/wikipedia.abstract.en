QSIG is an ISDN based signaling protocol for signaling between private branch exchanges (PBXs) in a private integrated services network (PISN). It makes use of the connection-level Q.931 protocol and the application-level ROSE protocol. ISDN "proper" functions as the physical link layer.

QSIG was originally developed by Ecma International, adopted by ETSI and is defined by a set of ISO standard documents, so is not owned by any company. This allows interoperability between communications platforms provided by disparate vendors.

QSIG has two layers, called BC (basic call) and GF (generic function). QSIG BC describes how to set up calls between PBXs. QSIG GF provides supplementary services for large-scale corporate, educational, and government networks, such as line identification, call intrusion and call forwarding. Thus for a large or very distributed company that requires multiple PBXs, users can receive the same services across the network and be unaware of the switch that their telephone is connected to. This greatly eases the problems of management of large networks.

QSIG will likely never rival each vendor's private network protocols, but it does provide an option for a higher level of integration than that of the traditional choices.


List of QSIG standards

Note: This list is not complete. See the "source" after the list for more information.

-   ECMA-143 - Private Integrated Services Network (PISN) - Circuit Mode Bearer Services - Inter-Exchange Signalling Procedures and Protocol (QSIG-BC), Basic Call,
    International and European Versions: ISO/IEC 11572, ETSI EN 300 172
-   ECMA-165 - Private Integrated Services Network (PISN) - Generic Functional Protocol for the Support of Supplementary Services - Inter-Exchange Signalling Procedures and Protocol (QSIG-GF),
    International and European Versions: ISO/IEC 11582, ETSI ETS 300 239
-   ECMA-164 - Private Integrated Services Network (PISN) - Inter-Exchange Signalling Protocol - Name Identification Supplementary Services (QSIG-NA),
    International and European Versions: ISO/IEC 13868, ETSI ETS 300 238
-   ECMA-174 - Private Integrated Services Network (PISN) - Inter-Exchange Signalling Protocol - Call Diversion Supplementary Services (QSIG-CF),
    International and European Versions: ISO/IEC 13873, ETSI ETS 300 257
-   ECMA-178 - Private Integrated Services Network (PISN) - Inter-Exchange Signalling Protocol - Call Transfer Supplementary Service (QSIG-CT),
    International and European Versions: ISO/IEC 13869, ETSI ETS 300 261

Source : ECMA - list of standards (search the list for PISN to find all QSIG related standards at ECMA)

QSIG basically uses ROSE to invoke specific supplementary service at the remote PINX. These ROSE operations are coded in a Q.931 FACILITY info element. Here a list of QSIG opcodes:

  opcode   supplServ                    defining ECMA
  -------- ---------------------------- ---------------
  0        callingName                  ECMA-164
  1        calledName                   ECMA-164
  2        connectedName                ECMA-164
  3        busyName                     ECMA-164
  4        pathReplacePropose           ECMA-176
  5        pathReplaceSetup             ECMA-176
  6        pathReplaceRetain            ECMA-176
  7        callTransferIdentity         ECMA-178
  8        callTransferAbandon          ECMA-178
  9        callTransferInitiate         ECMA-178
  10       callTransferSetup            ECMA-178
  11       callTransferActive           ECMA-178
  12       callTransferComplete         ECMA-178
  13       callTransferUpdate           ECMA-178
  14       subaddressTransfer           ECMA-178
  15       activateDiversionQ           ECMA-174
  16       deactivateDiversionQ         ECMA-174
  17       interrogateDiversionQ        ECMA-174
  18       checkRestriction             ECMA-174
  19       callRerouteing               ECMA-174
  20       divertingLegInformation1     ECMA-174
  21       divertingLegInformation2     ECMA-174
  22       divertingLegInformation3     ECMA-174
  23       cfnrDivertedLegFailed        ECMA-174
  27       ccnrRequest                  ECMA-186
  28       ccCancel                     ECMA-186
  29       ccExecPossible               ECMA-186
  30       ccPathReverse                ECMA-186
  31       ccRingout                    ECMA-186
  32       ccSuspend                    ECMA-186
  33       ccResume                     ECMA-186
  34       callOfferRequest             ECMA-192
  35       doNotDisturbActivateQ        ECMA-194
  36       doNotDisturbDeactivateQ      ECMA-194
  37       doNotDisturbInterrogateQ     ECMA-194
  38       doNotDsturbOverrideQ         ECMA-194
  39       doNotDisturbOvrExecuteQ      ECMA-194
  40       ccbsRequest                  ECMA-186
  41       pathRetain                   ECMA-192
  42       serviceAvailable             ECMA-192
  43       callIntrusionRequest         ECMA-203
  44       callIntrusionGetCIPL         ECMA-203
  45       callIntrusionIsolate         ECMA-203
  46       callIntrusionForcedRelease   ECMA-203
  47       callIntrusionWOBRequest      ECMA-203
  48       callIntrusionCompleted       ECMA-203
  49       cfbOverride                  ECMA-192
  54       ctmiEnquiry                  ECMA-215
  55       ctmiDivert                   ECMA-215
  56       ctmiInform                   ECMA-215
  57       recallAlert                  ECMA-214
  58       recallAnswered               ECMA-214
  59       chargeRequest                ECMA-212
  60       getFinalCharge               ECMA-212
  61       aocFinal                     ECMA-212
  62       aocInterim                   ECMA-212
  63       aocRate                      ECMA-212
  64       aocComplete                  ECMA-212
  65       aocDivChargeReq              ECMA-212
  66       cintLeginformation1          ECMA-221
  67       cintLegInformation2          ECMA-221
  68       cintCondition                ECMA-221
  69       cintDisable                  ECMA-221
  70       cintEnable                   ECMA-221
  80       mWIActivate                  ECMA-242
  81       mWIDeactivate                ECMA-242
  82       mWIInterrogate               ECMA-242
  84       cmnRequest                   ECMA-251
  85       cmnInform                    ECMA-251
  86       pathReplaceInvite            ECMA-176


List of ISDN standards

-   ETS 300 052 - Multiple Subscriber Number
-   ETS 300 055 - Call Waiting
-   ETS 300 092 - Calling Line Identification Presentation (CLIP)
-   ETS 300 093 - Calling Line Identification Restriction (CLIR)
-   ETS 300 097 - Connected Line Identification Presentation (COLP)
-   ETS 300 098 - Connected Line Identification Restriction (COLR)
-   ETS 300 130 - Malicious Call Identification
-   ETS 300 141 - Call Hold
-   ETS 300 172 - Circuit-Mode Basic Service
-   ETS 300 173 - Called/Calling Line ID Presentation
-   ETS 300 182 - Advice Of Charge
-   ETS 300 188 - Three Way Conference
-   ETS 300 207 - Call Diversion
-   ETS 300 237 - Called/Calling Name Presentation
-   ETS 300 238 - Called/Calling Name Presentation
-   ETS 300 239 - Generic Functional Protocol
-   ETS 300 256 - CFU Supplementary Service
-   ETS 300 258 - Path Replacement (ANF-PR)
-   ETS 300 359 - Call Completion To Busy Subscriber (CCBS)
-   ETS 300 260 - Call Transfer By Join (SS-CT)
-   ETS 300 261 - Call Transfer - (SS-CT)
-   ETS 300 369 - Explicit Call Transfer
-   ETS 300 745 - Message Waiting Indication (MWI)
-   ETS 300 259 - Path Replacement Additional Network Feature (ANF-PR)
-   ETS 301 258 - Recall Supplementary Service (SS-RE)
-   ETS 301 919 - Single Step Call Transfer Supplementary Service (SS-SSCT)

Source : European Telecommunications Standards Institute (ETSI)

-   CCITT G.703 - Describes the physical/electrical characteristics of hierarchical digital interfaces.

Source : International Telecommunications Union (ITU)


See also

-   H.450
-   DPNSS

Category:Telephony