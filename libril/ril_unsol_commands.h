/* //device/libs/telephony/ril_unsol_commands.h
**
** Copyright 2006, The Android Open Source Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/
    {RIL_UNSOL_RESPONSE_RADIO_STATE_CHANGED, radio::radioStateChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_CALL_STATE_CHANGED, radio::callStateChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED, radio::networkStateChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_NEW_SMS, radio::newSmsInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT, radio::newSmsStatusReportInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_NEW_SMS_ON_SIM, radio::newSmsOnSimInd, WAKE_PARTIAL},
    {RIL_UNSOL_ON_USSD, radio::onUssdInd, WAKE_PARTIAL},
    {RIL_UNSOL_ON_USSD_REQUEST, radio::onUssdInd, DONT_WAKE},
    {RIL_UNSOL_NITZ_TIME_RECEIVED, radio::nitzTimeReceivedInd, WAKE_PARTIAL},
    {RIL_UNSOL_SIGNAL_STRENGTH, radio::currentSignalStrengthInd, DONT_WAKE},
    {RIL_UNSOL_DATA_CALL_LIST_CHANGED, radio::dataCallListChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_SUPP_SVC_NOTIFICATION, radio::suppSvcNotifyInd, WAKE_PARTIAL},
    {RIL_UNSOL_STK_SESSION_END, radio::stkSessionEndInd, WAKE_PARTIAL},
    {RIL_UNSOL_STK_PROACTIVE_COMMAND, radio::stkProactiveCommandInd, WAKE_PARTIAL},
    {RIL_UNSOL_STK_EVENT_NOTIFY, radio::stkEventNotifyInd, WAKE_PARTIAL},
    {RIL_UNSOL_STK_CALL_SETUP, radio::stkCallSetupInd, WAKE_PARTIAL},
    {RIL_UNSOL_SIM_SMS_STORAGE_FULL, radio::simSmsStorageFullInd, WAKE_PARTIAL},
    {RIL_UNSOL_SIM_REFRESH, radio::simRefreshInd, WAKE_PARTIAL},
    {RIL_UNSOL_CALL_RING, radio::callRingInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_SIM_STATUS_CHANGED, radio::simStatusChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_CDMA_NEW_SMS, radio::cdmaNewSmsInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_NEW_BROADCAST_SMS, radio::newBroadcastSmsInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_RUIM_SMS_STORAGE_FULL, radio::cdmaRuimSmsStorageFullInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESTRICTED_STATE_CHANGED, radio::restrictedStateChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE, radio::enterEmergencyCallbackModeInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_CALL_WAITING, radio::cdmaCallWaitingInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_OTA_PROVISION_STATUS, radio::cdmaOtaProvisionStatusInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_INFO_REC, radio::cdmaInfoRecInd, WAKE_PARTIAL},
    {RIL_UNSOL_OEM_HOOK_RAW, radio::oemHookRawInd, WAKE_PARTIAL},
    {RIL_UNSOL_RINGBACK_TONE, radio::indicateRingbackToneInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESEND_INCALL_MUTE, radio::resendIncallMuteInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED, radio::cdmaSubscriptionSourceChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_CDMA_PRL_CHANGED, radio::cdmaPrlChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE, radio::exitEmergencyCallbackModeInd, WAKE_PARTIAL},
    {RIL_UNSOL_RIL_CONNECTED, radio::rilConnectedInd, WAKE_PARTIAL},
    {RIL_UNSOL_VOICE_RADIO_TECH_CHANGED, radio::voiceRadioTechChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_CELL_INFO_LIST, radio::cellInfoListInd, WAKE_PARTIAL},
    {RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED, radio::imsNetworkStateChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED, radio::subscriptionStatusChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_SRVCC_STATE_NOTIFY, radio::srvccStateNotifyInd, WAKE_PARTIAL},
    {RIL_UNSOL_HARDWARE_CONFIG_CHANGED, radio::hardwareConfigChangedInd, WAKE_PARTIAL},
    {RIL_UNSOL_DC_RT_INFO_CHANGED, NULL, WAKE_PARTIAL},
    {RIL_UNSOL_RADIO_CAPABILITY, radio::radioCapabilityIndicationInd, WAKE_PARTIAL},
    {RIL_UNSOL_ON_SS, radio::onSupplementaryServiceIndicationInd, WAKE_PARTIAL},
    {RIL_UNSOL_STK_CC_ALPHA_NOTIFY, radio::stkCallControlAlphaNotifyInd, WAKE_PARTIAL},
    {RIL_UNSOL_LCEDATA_RECV, radio::lceDataInd, WAKE_PARTIAL},
    {RIL_UNSOL_PCO_DATA, radio::pcoDataInd, WAKE_PARTIAL},
    {RIL_UNSOL_MODEM_RESTART, radio::modemResetInd, WAKE_PARTIAL},
    {RIL_UNSOL_CARRIER_INFO_IMSI_ENCRYPTION, radio::carrierInfoForImsiEncryption, WAKE_PARTIAL},
    {RIL_UNSOL_NETWORK_SCAN_RESULT, radio::networkScanResultInd, WAKE_PARTIAL},
    {RIL_UNSOL_ENTER_LPM, /* responseVoid */ NULL, WAKE_PARTIAL},                                    // s_unsolResponses[49]: 1523
    {RIL_UNSOL_CDMA_3G_INDICATOR, /* responseInts */ NULL, WAKE_PARTIAL},                            // s_unsolResponses[50]: 3009 (s4) / 4259 (m7)
    {RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR, /* responseCdmaERIInfo */ NULL, WAKE_PARTIAL},        // s_unsolResponses[51]: 3012
    {RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL, /* responseString */ NULL, WAKE_PARTIAL},           // s_unsolResponses[52]: 3020
    {RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE, /* responseInts */ NULL, WAKE_PARTIAL},                   // s_unsolResponses[53]: 6002 (s4) / 4802 (m7)
    {RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED, /* responseVoid */ NULL, WAKE_PARTIAL},            // s_unsolResponses[54]: 21004
    {RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED_HTC, /* responseVoid */ NULL, WAKE_PARTIAL},       // s_unsolResponses[55]: 21005
    {RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED, /* responseDataCallList */ NULL, WAKE_PARTIAL},  // s_unsolResponses[56]: 21007 (s4) / 5757 (m7)
    {RIL_UNSOL_SECTOR_ID_IND, /* responseString */ NULL, WAKE_PARTIAL},                              // s_unsolResponses[57]: 3057 (m7)
    {RIL_UNSOL_TPMR_ID, /* responseInts */ NULL, WAKE_PARTIAL},                                      // s_unsolResponses[58]: 3024 (m7)
