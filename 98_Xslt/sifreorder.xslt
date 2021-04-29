<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output encoding="UTF-8" indent="yes" method="xml" />

  <xsl:template match="node()|@*">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="object"/>
  </xsl:copy>
 </xsl:template>

   <xsl:template match="node()|@*" mode="copy">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="copy"/>
  </xsl:copy>
  </xsl:template>
<xsl:template match="SEAInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SEAName" mode="copy" />
<xsl:apply-templates select="SEAURL" mode="copy" />
<xsl:apply-templates select="CSSOContact" mode="ContactInfoType" />
<xsl:apply-templates select="SEAContactList" mode="SEAContactListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="OperationalStatus" mode="OperationalStatusType" />
<xsl:apply-templates select="EDENInfo" mode="EDENInfoType" />
<xsl:apply-templates select="CTEGraduationRateInclusion" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentLEARelationship" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="LEARelationshipType" mode="OrganizationRelationshipType" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="EntryType" mode="StudentEntryTypeType" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="ExitType" mode="StudentExitTypeType" />
<xsl:apply-templates select="ExitStatus" mode="StudentExitStatusType" />
<xsl:apply-templates select="NonResidentAttendReason" mode="StudentLEARelationshipNonResidentAttendReasonType" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SEAAccountability" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="HighSchoolGraduationRateIndicatorStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="SEAFederalFund" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FederalProgramList" mode="FederalProgramListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xCalendar" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="schoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="schoolYear" mode="xSchoolYearType" />
<xsl:apply-templates select="sessions" mode="xSessionListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xContact" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="xPersonNameType" />
<xsl:apply-templates select="otherNames" mode="xOtherPersonNameListType" />
<xsl:apply-templates select="localId" mode="xPersonIdType" />
<xsl:apply-templates select="loginId" mode="xLoginIdType" />
<xsl:apply-templates select="otherIds" mode="xOtherPersonIdListType" />
<xsl:apply-templates select="address" mode="xPersonAddressType" />
<xsl:apply-templates select="phoneNumber" mode="xTelephoneType" />
<xsl:apply-templates select="otherPhoneNumbers" mode="xTelephoneListType" />
<xsl:apply-templates select="email" mode="xEmailType" />
<xsl:apply-templates select="otherEmails" mode="xEmailListType" />
<xsl:apply-templates select="sex" mode="copy" />
<xsl:apply-templates select="employerType" mode="copy" />
<xsl:apply-templates select="relationships" mode="xContactStudentRelationshipListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xCourse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="schoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="schoolCourseId" mode="xCourseIdType" />
<xsl:apply-templates select="leaCourseId" mode="xCourseIdType" />
<xsl:apply-templates select="otherIds" mode="xOtherCourseIdListType" />
<xsl:apply-templates select="courseTitle" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="subject" mode="xSubjectType" />
<xsl:apply-templates select="applicableEducationLevels" mode="xApplicableEducationLevelListType" />
<xsl:apply-templates select="scedCourseCode" mode="copy" />
<xsl:apply-templates select="scedCourseLevelCode" mode="copy" />
<xsl:apply-templates select="scedCourseSubjectAreaCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="xIndividualizedEducationPlan" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="iepAdministrativeData" mode="iepAdministrativeDataType" />
<xsl:apply-templates select="iepEligibility" mode="iepEligibilityType" />
<xsl:apply-templates select="iepPlan" mode="iepPlanType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xLea" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="localId" mode="xOrganizationIdType" />
<xsl:apply-templates select="leaRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="stateProvinceId" mode="xOrganizationIdType" />
<xsl:apply-templates select="ncesId" mode="xOrganizationIdType" />
<xsl:apply-templates select="leaName" mode="copy" />
<xsl:apply-templates select="address" mode="xOrganizationAddressType" />
<xsl:apply-templates select="phoneNumber" mode="xTelephoneType" />
<xsl:apply-templates select="otherPhoneNumbers" mode="xTelephoneListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xRoster" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="courseRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="courseTitle" mode="copy" />
<xsl:apply-templates select="sectionRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="subject" mode="xSubjectType" />
<xsl:apply-templates select="schoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="schoolSectionId" mode="copy" />
<xsl:apply-templates select="schoolYear" mode="xSchoolYearType" />
<xsl:apply-templates select="meetingTimes" mode="xMeetingTimeListType" />
<xsl:apply-templates select="students" mode="xStudentReferenceListType" />
<xsl:apply-templates select="primaryStaff" mode="xStaffReferenceType" />
<xsl:apply-templates select="otherStaffs" mode="xStaffReferenceListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xSchool" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="leaRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="lea" mode="copy" />
<xsl:apply-templates select="localId" mode="xOrganizationIdType" />
<xsl:apply-templates select="stateProvinceId" mode="xOrganizationIdType" />
<xsl:apply-templates select="otherIds" mode="xOtherOrganizationIdListType" />
<xsl:apply-templates select="schoolName" mode="copy" />
<xsl:apply-templates select="gradeLevels" mode="xYearGroupListType" />
<xsl:apply-templates select="address" mode="xOrganizationAddressType" />
<xsl:apply-templates select="phoneNumber" mode="xTelephoneType" />
<xsl:apply-templates select="otherPhoneNumbers" mode="xTelephoneListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xStaff" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="xPersonNameType" />
<xsl:apply-templates select="localId" mode="xPersonIdType" />
<xsl:apply-templates select="loginId" mode="xLoginIdType" />
<xsl:apply-templates select="stateProvinceId" mode="xPersonIdType" />
<xsl:apply-templates select="otherIds" mode="xOtherPersonIdListType" />
<xsl:apply-templates select="sex" mode="copy" />
<xsl:apply-templates select="email" mode="xEmailType" />
<xsl:apply-templates select="primaryAssignment" mode="xStaffPersonAssignmentType" />
<xsl:apply-templates select="otherAssignments" mode="xStaffPersonAssignmentListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xStudent" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="xPersonNameType" />
<xsl:apply-templates select="otherNames" mode="xOtherPersonNameListType" />
<xsl:apply-templates select="localId" mode="xPersonIdType" />
<xsl:apply-templates select="loginId" mode="xLoginIdType" />
<xsl:apply-templates select="stateProvinceId" mode="xPersonIdType" />
<xsl:apply-templates select="otherIds" mode="xOtherPersonIdListType" />
<xsl:apply-templates select="address" mode="xPersonAddressType" />
<xsl:apply-templates select="otherAddresses" mode="xOtherPersonAddressListType" />
<xsl:apply-templates select="phoneNumber" mode="xTelephoneType" />
<xsl:apply-templates select="otherPhoneNumbers" mode="xTelephoneListType" />
<xsl:apply-templates select="email" mode="xEmailType" />
<xsl:apply-templates select="otherEmails" mode="xEmailListType" />
<xsl:apply-templates select="demographics" mode="xDemographicsType" />
<xsl:apply-templates select="enrollment" mode="xEnrollmentType" />
<xsl:apply-templates select="otherEnrollments" mode="xEnrollmentListType" />
<xsl:apply-templates select="academicSummary" mode="xAcademicSummaryType" />
<xsl:apply-templates select="studentContacts" mode="xStudentContactListType" />
<xsl:apply-templates select="languages" mode="xLanguageListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xTransferIep" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referenceObjects" mode="tiepReferenceObjectsType" />
<xsl:apply-templates select="iep" mode="xIepType" />
<xsl:apply-templates select="historyList" mode="tiepHistoryListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateStatisticInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatisticName" mode="copy" />
<xsl:apply-templates select="CalculationRule" mode="CalculationRuleType" />
<xsl:apply-templates select="ApprovalDate" mode="copy" />
<xsl:apply-templates select="ExpirationDate" mode="copy" />
<xsl:apply-templates select="ExclusionRules" mode="ExclusionRuleListType" />
<xsl:apply-templates select="Source" mode="copy" />
<xsl:apply-templates select="EffectiveDate" mode="copy" />
<xsl:apply-templates select="DiscontinueDate" mode="copy" />
<xsl:apply-templates select="Location" mode="AggregateStatisticInfoLocationType" />
<xsl:apply-templates select="Measure" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateCharacteristicInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Definition" mode="copy" />
<xsl:apply-templates select="ElementName" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateStatisticFact" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AggregateStatisticInfoRefId" mode="copy" />
<xsl:apply-templates select="Characteristics" mode="AggregateCharacteristicInfoRefIdListType" />
<xsl:apply-templates select="Excluded" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentMeal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
<xsl:apply-templates select="HistoricalMealStatus" mode="MealStatusListType" />
<xsl:apply-templates select="LastBreakfastDate" mode="copy" />
<xsl:apply-templates select="LastLunchDate" mode="copy" />
<xsl:apply-templates select="Amounts" mode="FSAmountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="ItemCategory" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceItemUnit" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FoodserviceItemRefId" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="MeasureDescriptionCode" mode="copy" />
<xsl:apply-templates select="GramWeight" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceItemPortion" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FoodserviceItemUnitRefId" mode="copy" />
<xsl:apply-templates select="ItemPortionQuantity" mode="copy" />
<xsl:apply-templates select="ItemPortionType" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceReimbursementRates" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Agencies" mode="FoodserviceReimbursementAgencyListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceMealPrices" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Prices" mode="MealPriceListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffMeal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EarnedStatus" mode="EarnedStatusType" />
<xsl:apply-templates select="LastBreakfastDate" mode="copy" />
<xsl:apply-templates select="LastLunchDate" mode="copy" />
<xsl:apply-templates select="Amounts" mode="FSAmountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceTransaction" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="TransactionDate" mode="copy" />
<xsl:apply-templates select="TransactionTime" mode="copy" />
<xsl:apply-templates select="TransactionTypes" mode="FoodserviceTransactionListType" />
<xsl:apply-templates select="Customer" mode="FoodserviceCustomerType" />
<xsl:apply-templates select="Amount" mode="FSAmountType" />
<xsl:apply-templates select="Tax" mode="MonetaryAmountType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Voided" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceTransactionDetails" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FoodserviceTransactionRefId" mode="copy" />
<xsl:apply-templates select="Amounts" mode="FSAmountListType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceTransactionPayMethod" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FoodserviceTransactionRefId" mode="copy" />
<xsl:apply-templates select="TransactionPayMethods" mode="FoodservicePayMethodListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceSales" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="SalesAmounts" mode="FoodserviceSalesAmountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceItemSales" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="ItemQuantities" mode="FoodserviceItemQuantityListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceMenuPlan" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="MenuPlanDate" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ProjectedParticipation" mode="copy" />
<xsl:apply-templates select="MenuPlanQuantities" mode="MenuPlanQuantityListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceMilkSales" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="SaleQuantities" mode="MilkSaleQuantityListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodservicePurchaseTransaction" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FoodserviceTransactionRefId" mode="copy" />
<xsl:apply-templates select="PurchaseQuantities" mode="FoodservicePurchaseQuantityListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceStaffEnrollmentCount" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Counts" mode="FSCountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceStaffMealCounts" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Program" mode="copy" />
<xsl:apply-templates select="Counts" mode="FSCountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceStudentEnrollmentCount" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Counts" mode="FSCountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FoodserviceStudentMealCounts" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Counts" mode="FSCountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentRecordExchange" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="Records" mode="StudentRecordsType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentDemographicRecord" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportingDate" mode="copy" />
<xsl:apply-templates select="StudentPersonalData" mode="StudentPersonalDataType" />
<xsl:apply-templates select="StudentContactsSummary" mode="StudentContactsSummaryType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentAcademicRecord" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportingDate" mode="copy" />
<xsl:apply-templates select="StudentSchoolEnrollmentData" mode="StudentSchoolEnrollmentDataType" />
<xsl:apply-templates select="DistrictEntryDate" mode="PartialDateType" />
<xsl:apply-templates select="SchoolAttendanceHistory" mode="SchoolAttendanceHistoryListType" />
<xsl:apply-templates select="EnrollmentHistory" mode="StudentSchoolEnrollmentSummaryListType" />
<xsl:apply-templates select="CurrentCourseActivity" mode="CurrentCourseActivityType" />
<xsl:apply-templates select="CourseHistory" mode="CourseHistoryTermListType" />
<xsl:apply-templates select="AcademicPerformanceHistory" mode="AcademicPerformanceHistoryType" />
<xsl:apply-templates select="AcademicPerformanceSummary" mode="AcademicPerformanceSummaryType" />
<xsl:apply-templates select="AssessmentPerformanceHistory" mode="AssessmentPerformanceHistoryListType" />
<xsl:apply-templates select="AdditionalGraduationRequirementPerformanceHistory" mode="AdditionalGraduationRequirementPerformanceHistoryListType" />
<xsl:apply-templates select="ActivityAwardHistory" mode="ActivityAwardHistoryListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSpecialEducationRecord" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportingDate" mode="copy" />
<xsl:apply-templates select="LEAInfoData" mode="LEAInfoSummaryCleanType" />
<xsl:apply-templates select="SchoolInfoData" mode="SchoolInfoMiniSummaryType" />
<xsl:apply-templates select="StudentParticipationData" mode="StudentParticipationDataType" />
<xsl:apply-templates select="StudentParticipationList" mode="StudentSpecialEducationSummaryStudentParticipationListType" />
<xsl:apply-templates select="StudentPlacementList" mode="StudentSpecialEducationSummaryStudentPlacementListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentRecordPackage" mode="object">
<xsl:apply-templates select="." mode="StudentRecordPackageAbstractContentPackageType" />
</xsl:template>
<xsl:template match="MarkValueInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Percentage" mode="MarkValuePercentageType" />
<xsl:apply-templates select="Numeric" mode="MarkValueNumberType" />
<xsl:apply-templates select="Letter" mode="MarkValueLetterType" />
<xsl:apply-templates select="Narrative" mode="MarkValueNarrativeType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="MarkInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SectionMarkInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermMarkLists" mode="TermMarkListsType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSectionMarks" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IsFinal" mode="copy" />
<xsl:apply-templates select="MarkList" mode="StudentSectionMarkListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingCategory" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="PointsPossible" mode="copy" />
<xsl:apply-templates select="CreateDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
<xsl:apply-templates select="Weight" mode="copy" />
<xsl:apply-templates select="DetailedDescription" mode="DocumentSourceType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingAssignmentScore" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScorePoints" mode="copy" />
<xsl:apply-templates select="ScorePercent" mode="copy" />
<xsl:apply-templates select="ScoreLetter" mode="copy" />
<xsl:apply-templates select="ScoreDescription" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPeriodAttendance" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimetablePeriod" mode="copy" />
<xsl:apply-templates select="TimeIn" mode="copy" />
<xsl:apply-templates select="TimeOut" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="AttendanceCodeType" />
<xsl:apply-templates select="AuditInfo" mode="StudentAttendanceAuditInfoType" />
<xsl:apply-templates select="AttendanceComment" mode="copy" />
<xsl:apply-templates select="InstructionalDeliveryMode" mode="InstructionalDeliveryModeType" />
<xsl:apply-templates select="ExpectationsMet" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="OfficialStudentPeriodAttendance" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentGrade" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SectionInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="Grade" mode="StudentGradeGradeType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Billing" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BilledEntity" mode="copy" />
<xsl:apply-templates select="BillingDate" mode="copy" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="BilledAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Payment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReceivedDate" mode="copy" />
<xsl:apply-templates select="ReceivedAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="ReceivedTransactionId" mode="copy" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="PrimaryAssignment" mode="copy" />
<xsl:apply-templates select="LocationInfoRefId" mode="copy" />
<xsl:apply-templates select="JobStartDate" mode="copy" />
<xsl:apply-templates select="JobEndDate" mode="copy" />
<xsl:apply-templates select="JobFTE" mode="copy" />
<xsl:apply-templates select="JobClassification" mode="JobClassificationType" />
<xsl:apply-templates select="ProgramType" mode="EmployeeAssignmentProgramType" />
<xsl:apply-templates select="FundingSource" mode="OldFundingSourceType" />
<xsl:apply-templates select="SpecialEducation" mode="SpecialEductionType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeContract" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BaseSalary" mode="MonetaryAmountType" />
<xsl:apply-templates select="ContractStartDate" mode="copy" />
<xsl:apply-templates select="ContractEndDate" mode="copy" />
<xsl:apply-templates select="ContractTerm" mode="copy" />
<xsl:apply-templates select="ContractDays" mode="copy" />
<xsl:apply-templates select="AssignmentDays" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmploymentRecord" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="Active" mode="copy" />
<xsl:apply-templates select="FullTimeStatus" mode="copy" />
<xsl:apply-templates select="HireDate" mode="copy" />
<xsl:apply-templates select="TerminationDate" mode="copy" />
<xsl:apply-templates select="TotalYearsExperience" mode="copy" />
<xsl:apply-templates select="PositionTitle" mode="copy" />
<xsl:apply-templates select="PositionNumber" mode="copy" />
<xsl:apply-templates select="SeniorityDate" mode="copy" />
<xsl:apply-templates select="TenureDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeePersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="OtherIdList" mode="EmployeePersonalOtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeePicture" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PictureSource" mode="PictureSourceType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialAnnual" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportDate" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="FiscalYear" mode="copy" />
<xsl:apply-templates select="AnnualItems" mode="AnnualItemListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialBudget" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportDate" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="FiscalYear" mode="copy" />
<xsl:apply-templates select="BudgetAccounts" mode="BudgetAccountListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TimeWorked" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="LocationInfoRefId" mode="copy" />
<xsl:apply-templates select="JobFunction" mode="JobFunctionType" />
<xsl:apply-templates select="RegularHours" mode="copy" />
<xsl:apply-templates select="OvertimeHours" mode="copy" />
<xsl:apply-templates select="PayPeriod" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="VendorInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
<xsl:apply-templates select="CustomerId" mode="copy" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="Send1099" mode="copy" />
<xsl:apply-templates select="FederalTaxId" mode="FederalTaxIdType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="W4" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="W4Date" mode="copy" />
<xsl:apply-templates select="MaritalStatusRate" mode="copy" />
<xsl:apply-templates select="FederalAllowancesNumber" mode="copy" />
<xsl:apply-templates select="StateAllowancesNumber" mode="copy" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="Exempt" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeWage" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PayRates" mode="PayRateListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LocationInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SiteCategory" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="IdentificationInfoList" mode="IdentificationInfoListType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="OtherLEAs" mode="OtherLEAListType" />
<xsl:apply-templates select="ParentLocationInfo" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Purchasing" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FormType" mode="copy" />
<xsl:apply-templates select="FormNumber" mode="copy" />
<xsl:apply-templates select="FiscalYearRefId" mode="copy" />
<xsl:apply-templates select="VendorInfoRefId" mode="copy" />
<xsl:apply-templates select="LocationInfoRefId" mode="copy" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="PurchasingItems" mode="PurchasingItemListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AccountingPeriod" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="FiscalYearRefId" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialAccount" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountNumber" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="FinancialClassRefId" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="CreationTime" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialAccountAccountingPeriodLocationInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="AccountingPeriodRefId" mode="copy" />
<xsl:apply-templates select="LocationInfoRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialClass" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ClassType" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialIncomeStatement" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GenerationDate" mode="copy" />
<xsl:apply-templates select="GenerationTime" mode="copy" />
<xsl:apply-templates select="LocationInfoRefId" mode="copy" />
<xsl:apply-templates select="Period" mode="PeriodType" />
<xsl:apply-templates select="Amounts" mode="FinancialIncomeStatementMonetaryAmountListType" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialTransaction" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TransactionDate" mode="copy" />
<xsl:apply-templates select="TransactionTime" mode="copy" />
<xsl:apply-templates select="Amounts" mode="DebitCreditMonetaryAmountListType" />
<xsl:apply-templates select="Program" mode="FundedProgramType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FiscalYear" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ActivityProvider" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeCredit" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Earned" mode="EmployeeCreditEarnedType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeRecertification" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="SSN" mode="SSNType" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="ActivityName" mode="copy" />
<xsl:apply-templates select="ActivityType" mode="copy" />
<xsl:apply-templates select="ActivityHours" mode="copy" />
<xsl:apply-templates select="Earned" mode="EmployeeCreditEarnedType" />
<xsl:apply-templates select="DateFrom" mode="copy" />
<xsl:apply-templates select="DateTo" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EmployeeCredential" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportDate" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="SSN" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="Race" mode="copy" />
<xsl:apply-templates select="Hispanic" mode="EmployeeCredentialHispanicType" />
<xsl:apply-templates select="Certifications" mode="EmployeeCertificationListType" />
<xsl:apply-templates select="Salary" mode="MonetaryAmountType" />
<xsl:apply-templates select="Status" mode="EmployeeCredentialStatusType" />
<xsl:apply-templates select="Leave" mode="EmployeeCredentialLeaveType" />
<xsl:apply-templates select="TotalYears" mode="copy" />
<xsl:apply-templates select="UnitYears" mode="copy" />
<xsl:apply-templates select="Education" mode="EmployeeCredentialEducationType" />
<xsl:apply-templates select="TeachingCredentialType" mode="EmployeeCredentialTeachingCredentialTypeType" />
<xsl:apply-templates select="TeachingCredentialStartDate" mode="copy" />
<xsl:apply-templates select="TeachingCredentialEndDate" mode="copy" />
<xsl:apply-templates select="HighlyQualifiedTeacherIndicator" mode="EmployeeCredentialHighlyQualifiedTeacherIndicatorType" />
<xsl:apply-templates select="ParaprofessionalQualificationStatus" mode="EmployeeCredentialParaprofessionalQualificationStatusType" />
<xsl:apply-templates select="TerminationCode" mode="EmployeeCredentialTerminationCodeType" />
<xsl:apply-templates select="BackgroundChecks" mode="BackgroundCheckListType" />
<xsl:apply-templates select="Assignments" mode="EmployeeCredentialAssignmentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ProfessionalDevelopmentActivities" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProfessionalDevelopmentProgramRefId" mode="copy" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ClockHours" mode="copy" />
<xsl:apply-templates select="Credits" mode="copy" />
<xsl:apply-templates select="Stipend" mode="MonetaryAmountType" />
<xsl:apply-templates select="FundingSource" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ProfessionalDevelopmentProgram" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="LocalProgramId" mode="copy" />
<xsl:apply-templates select="ProgramName" mode="copy" />
<xsl:apply-templates select="ProgramType" mode="copy" />
<xsl:apply-templates select="FundingSource" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ProfessionalDevelopmentRegistration" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RegistrationStatus" mode="copy" />
<xsl:apply-templates select="ProfessionalDevelopmentActivityRefId" mode="copy" />
<xsl:apply-templates select="ProfessionalDevelopmentProgramRefId" mode="copy" />
<xsl:apply-templates select="PaidAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="Stipend" mode="MonetaryAmountType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentParticipation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentParticipationAsOfDate" mode="copy" />
<xsl:apply-templates select="ProgramType" mode="ProgramTypeType" />
<xsl:apply-templates select="ProgramIdentifier" mode="copy" />
<xsl:apply-templates select="ProgramName" mode="copy" />
<xsl:apply-templates select="ProgramFundingSources" mode="ProgramFundingSourceListType" />
<xsl:apply-templates select="ManagingPublicAgency" mode="copy" />
<xsl:apply-templates select="ManagingSchool" mode="StudentParticipationManagingSchoolType" />
<xsl:apply-templates select="PartCTransitionMeetingNotHeldReasons" mode="PartCTransitionMeetingNotHeldReasonListType" />
<xsl:apply-templates select="PartCTransitionMeetingDate" mode="copy" />
<xsl:apply-templates select="PartCTransitionMeetingOutcomes" mode="PartCTransitionMeetingOutcomeListType" />
<xsl:apply-templates select="ReferralDate" mode="copy" />
<xsl:apply-templates select="ReferralSource" mode="ReferralSourceType" />
<xsl:apply-templates select="ProgramStatus" mode="ProgramStatusType" />
<xsl:apply-templates select="GiftedEligibilityCriteria" mode="copy" />
<xsl:apply-templates select="EvaluationParentalConsentDate" mode="copy" />
<xsl:apply-templates select="EvaluationDate" mode="copy" />
<xsl:apply-templates select="EvaluationExtensionDate" mode="copy" />
<xsl:apply-templates select="ExtensionComments" mode="copy" />
<xsl:apply-templates select="ReevaluationDate" mode="copy" />
<xsl:apply-templates select="ExceptionalityCategories" mode="ExceptionalityCategoryListType" />
<xsl:apply-templates select="ProgramEligibilityDate" mode="copy" />
<xsl:apply-templates select="ProgramPlanType" mode="ProgramPlanTypeType" />
<xsl:apply-templates select="ProgramPlanDate" mode="copy" />
<xsl:apply-templates select="ProgramPlanEffectiveDate" mode="copy" />
<xsl:apply-templates select="NOREPDate" mode="copy" />
<xsl:apply-templates select="PlacementParentalConsentDate" mode="copy" />
<xsl:apply-templates select="ProgramPlacementDate" mode="copy" />
<xsl:apply-templates select="LeastRestrictiveEnvironment" mode="LeastRestrictiveEnvironmentType" />
<xsl:apply-templates select="ExtendedSchoolYear" mode="copy" />
<xsl:apply-templates select="ExtendedDay" mode="copy" />
<xsl:apply-templates select="ProgramAvailability" mode="ProgramAvailabilityType" />
<xsl:apply-templates select="PrivateNotPlacedByPublic" mode="copy" />
<xsl:apply-templates select="ProgramReviewDate" mode="copy" />
<xsl:apply-templates select="FBADate" mode="copy" />
<xsl:apply-templates select="BIPDate" mode="copy" />
<xsl:apply-templates select="ProgramExitDate" mode="copy" />
<xsl:apply-templates select="ProgramExitReason" mode="ProgramExitReasonType" />
<xsl:apply-templates select="ProjectedExitDate" mode="copy" />
<xsl:apply-templates select="ProjectedExitReason" mode="SourcedCodesetType" />
<xsl:apply-templates select="PlannedAssessmentParticipation" mode="SourcedCodesetType" />
<xsl:apply-templates select="TransitionPlanning" mode="SourcedCodesetType" />
<xsl:apply-templates select="StudentSpecialEducationFTE" mode="copy" />
<xsl:apply-templates select="EntryPerson" mode="copy" />
<xsl:apply-templates select="ParticipationContact" mode="copy" />
<xsl:apply-templates select="AdditionalProgramAvailabilityList" mode="ProgramAvailabilityListType" />
<xsl:apply-templates select="CaseManager" mode="copy" />
<xsl:apply-templates select="FreeAndReducedStatus" mode="copy" />
<xsl:apply-templates select="CertifiedLunchProgram" mode="copy" />
<xsl:apply-templates select="PerkinsLEPStatus" mode="StudentParticipationPerkinsLEPStatusType" />
<xsl:apply-templates select="TitleIIIAccountabilityProgressStatus" mode="StudentParticipationTitleIIIAccountabilityProgressStatusType" />
<xsl:apply-templates select="TitleIIIImmigrantParticipationStatus" mode="StudentParticipationTitleIIIImmigrantParticipationStatusType" />
<xsl:apply-templates select="NeglectedOrDelinquentAchievementIndicator" mode="StudentParticipationNeglectedOrDelinquentAchievementIndicatorType" />
<xsl:apply-templates select="NeglectedOrDelinquentAcademicOutcomeIndicator" mode="StudentParticipationNeglectedOrDelinquentAcademicOutcomeIndicatorType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPlacement" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPlacementAsOfDate" mode="copy" />
<xsl:apply-templates select="Service" mode="StudentPlacementServiceType" />
<xsl:apply-templates select="ServiceCategory" mode="copy" />
<xsl:apply-templates select="ServiceFundingSources" mode="StudentPlacementServiceFundingSourceListType" />
<xsl:apply-templates select="ServicingPublicAgency" mode="copy" />
<xsl:apply-templates select="ServicingSchool" mode="StudentPlacementServicingSchoolType" />
<xsl:apply-templates select="SchoolWhereServiceDelivered" mode="StudentPlacementSchoolWhereServiceDeliveredType" />
<xsl:apply-templates select="ServiceProviderType" mode="ServiceProviderTypeType" />
<xsl:apply-templates select="AgencyType" mode="copy" />
<xsl:apply-templates select="ServiceProviderName" mode="copy" />
<xsl:apply-templates select="ServiceSetting" mode="ServiceSettingType" />
<xsl:apply-templates select="WhenServiceProvided" mode="WhenServiceProvidedType" />
<xsl:apply-templates select="LatestStartDate" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="FrequencyTime" mode="FrequencyTimeType" />
<xsl:apply-templates select="DirectTime" mode="SessionDurationType" />
<xsl:apply-templates select="IndirectTime" mode="SessionDurationType" />
<xsl:apply-templates select="TotalServiceDuration" mode="SessionDurationType" />
<xsl:apply-templates select="IncludedInSpecialEducationFTE" mode="copy" />
<xsl:apply-templates select="SpecialNeedsTransportation" mode="copy" />
<xsl:apply-templates select="AssistiveTechnology" mode="copy" />
<xsl:apply-templates select="EntryPerson" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TestAccommodation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="NameLocalIdStateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="StateDistrictId" mode="StateProvinceIdType" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="StateSchoolId" mode="StateProvinceIdType" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="AssessmentRegistrationRefId" mode="copy" />
<xsl:apply-templates select="TestAdministration" mode="copy" />
<xsl:apply-templates select="TestSubjectArea" mode="copy" />
<xsl:apply-templates select="TestGradeLevel" mode="copy" />
<xsl:apply-templates select="TestAdministrationDateRange" mode="copy" />
<xsl:apply-templates select="PlannedTestAdministrationDate" mode="copy" />
<xsl:apply-templates select="TestType" mode="copy" />
<xsl:apply-templates select="AuthorizedActual" mode="TestAccommodationAuthorizedActualType" />
<xsl:apply-templates select="ActualTestAdministrationDate" mode="copy" />
<xsl:apply-templates select="StudentProgramAccommodations" mode="StudentProgramAccommodationListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSpecialEducationSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentSpecialEducationFTE" mode="copy" />
<xsl:apply-templates select="PrimaryDisabilityCode" mode="copy" />
<xsl:apply-templates select="SpecificDisabilityIdentified" mode="copy" />
<xsl:apply-templates select="EnvironmentForSchoolAge" mode="StudentSpecialEducationSummaryEnvironmentForSchoolAgeType" />
<xsl:apply-templates select="EnvironmentForEarlyChildhood" mode="StudentSpecialEducationSummaryEnvironmentForEarlyChildhoodType" />
<xsl:apply-templates select="NeglectedOrDelinquentParticipationList" mode="NeglectedOrDelinquentParticipationListType" />
<xsl:apply-templates select="StudentParticipationList" mode="StudentSpecialEducationSummaryStudentParticipationListType" />
<xsl:apply-templates select="StudentPlacementList" mode="StudentSpecialEducationSummaryStudentPlacementListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentCareerTechnical" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EducationCompleter" mode="copy" />
<xsl:apply-templates select="Concentrator" mode="copy" />
<xsl:apply-templates select="Participant" mode="StudentCareerTechnicalParticipantType" />
<xsl:apply-templates select="NontraditionalGenderStatus" mode="StudentCareerTechnicalNontraditionalGenderStatusType" />
<xsl:apply-templates select="DisplacedHomemaker" mode="StudentCareerTechnicalDisplacedHomemakerType" />
<xsl:apply-templates select="ProgramParticipationExitDate" mode="copy" />
<xsl:apply-templates select="ProgramParticipationStartDate" mode="copy" />
<xsl:apply-templates select="SingleParentOrSinglePregnantWoman" mode="StudentCareerTechnicalSingleParentOrSinglePregnantWomanType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Assessment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="AssessmentId" mode="copy" />
<xsl:apply-templates select="AssessmentIdSystem" mode="copy" />
<xsl:apply-templates select="AssessmentPackageRefId" mode="copy" />
<xsl:apply-templates select="AssessmentDescriptors" mode="AssessmentDescriptorListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemLabel" mode="copy" />
<xsl:apply-templates select="ItemName" mode="copy" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="Stimulus" mode="AbstractContentElementType" />
<xsl:apply-templates select="Stem" mode="AbstractContentElementType" />
<xsl:apply-templates select="ResponseChoices" mode="AssessmentItemChoiceListType" />
<xsl:apply-templates select="ItemScoreMaximum" mode="copy" />
<xsl:apply-templates select="ItemScoreMinimum" mode="copy" />
<xsl:apply-templates select="PerformanceLevels" mode="PerformanceLevelListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ItemCharacteristics" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PercentCorrect" mode="copy" />
<xsl:apply-templates select="SampleSize" mode="copy" />
<xsl:apply-templates select="SampleDescription" mode="copy" />
<xsl:apply-templates select="Measurements" mode="ItemCharacteristicsMeasurementListType" />
<xsl:apply-templates select="Descriptive" mode="ItemCharacteristicsDescriptiveType" />
<xsl:apply-templates select="DifferentialItemAnalysis" mode="ItemCharacteristicsDifferentialItemAnalysisType" />
<xsl:apply-templates select="ResponseChoicePattern" mode="ItemCharacteristicsChoiceListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentSubTest" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ScoreRange" mode="ScoreRangeType" />
<xsl:apply-templates select="PerformanceLevels" mode="PerformanceLevelListType" />
<xsl:apply-templates select="SubjectArea" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="AssessmentSubTestRefIds" mode="AssessmentSubTestRefIdListType" />
<xsl:apply-templates select="SubTestTier" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefIds" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="Abbreviation" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="NumberOfItems" mode="copy" />
<xsl:apply-templates select="ContainerOnly" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentAdministration" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AdministrationName" mode="copy" />
<xsl:apply-templates select="SpecialConditions" mode="SpecialConditionActionListType" />
<xsl:apply-templates select="AdministrationDateTime" mode="copy" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="FinishDateTime" mode="copy" />
<xsl:apply-templates select="DueDateTime" mode="copy" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentForm" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AssessmentType" mode="copy" />
<xsl:apply-templates select="FormName" mode="copy" />
<xsl:apply-templates select="FormNumbers" mode="AssessmentFormNumberListType" />
<xsl:apply-templates select="Level" mode="copy" />
<xsl:apply-templates select="Period" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="AssessmentSubTestRefIds" mode="AssessmentSubTestRefIdListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentRegistration" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationDateTime" mode="copy" />
<xsl:apply-templates select="StudentSpecialConditions" mode="StudentSpecialConditionListType" />
<xsl:apply-templates select="StudentGradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="AssessmentGradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="AssessmentStudentSnapshot" mode="AssessmentStudentSnapshotType" />
<xsl:apply-templates select="StudentParticipation" mode="StudentParticipationCommonType" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="SectionInfoRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentResponseSet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Items" mode="StudentResponseSetItemListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentScoreSet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Scores" mode="StudentScoreSetScoreListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AssessmentPackage" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="XMLDataType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningStandardDocument" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RefURI" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="ShortName" mode="copy" />
<xsl:apply-templates select="DocumentVersion" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Source" mode="copy" />
<xsl:apply-templates select="Organizations" mode="OrganizationListType" />
<xsl:apply-templates select="Authors" mode="AuthorListType" />
<xsl:apply-templates select="OrganizationContactPoint" mode="copy" />
<xsl:apply-templates select="SubjectAreas" mode="SubjectAreaListType" />
<xsl:apply-templates select="DocumentStatus" mode="LearningStandardDocumentDocumentStatusType" />
<xsl:apply-templates select="DocumentDate" mode="copy" />
<xsl:apply-templates select="LocalAdoptionDate" mode="copy" />
<xsl:apply-templates select="LocalArchiveDate" mode="copy" />
<xsl:apply-templates select="EndOfLifeDate" mode="copy" />
<xsl:apply-templates select="Copyright" mode="CopyrightType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="RepositoryDate" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandards" mode="LearningStandardDocumentRefIdListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningStandardItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RefURI" mode="copy" />
<xsl:apply-templates select="ShortName" mode="copy" />
<xsl:apply-templates select="ItemVersion" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="StandardSettingBody" mode="StandardsSettingBodyType" />
<xsl:apply-templates select="StandardHierarchyLevel" mode="StandardHierarchyLevelType" />
<xsl:apply-templates select="PredecessorItems" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="StatementCodes" mode="StatementCodeListType" />
<xsl:apply-templates select="Statements" mode="StatementListType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="StandardIdentifier" mode="StandardIdentifierType" />
<xsl:apply-templates select="LearningStandardDocumentRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandardItems" mode="RelatedLearningStandardItemRefIdListType" />
<xsl:apply-templates select="Level4" mode="copy" />
<xsl:apply-templates select="Level5" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CurriculumStructure" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Titles" mode="TitleListType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="CurriculumHierarchyLevel" mode="CurriculumStructureCurriculumHierarchyLevelType" />
<xsl:apply-templates select="PredecessorObjects" mode="CurriculumStructureRefIdListType" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectiveListType" />
<xsl:apply-templates select="ComponentObjects" mode="ComponentObjectListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Lesson" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SourceObjects" mode="SourceObjectListType" />
<xsl:apply-templates select="CurriculumStructures" mode="CurriculumStructuresRefIdListType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Duration" mode="DurationType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Procedure" mode="copy" />
<xsl:apply-templates select="Strategies" mode="LessonStrategyListType" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectiveListType" />
<xsl:apply-templates select="SupportingActivities" mode="ActivityRefIdListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="LearningResources" mode="LearningResourceRefIdListType" />
<xsl:apply-templates select="LessonSources" mode="LessonSourceListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Activity" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Preamble" mode="copy" />
<xsl:apply-templates select="TechnicalRequirements" mode="TechnicalRequirementsType" />
<xsl:apply-templates select="SoftwareRequirementList" mode="SoftwareRequirementListType" />
<xsl:apply-templates select="EssentialMaterials" mode="EssentialMaterialListType" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectiveListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="Prerequisites" mode="PrerequisiteListType" />
<xsl:apply-templates select="Students" mode="StudentPersonalRefIdListType" />
<xsl:apply-templates select="SourceObjects" mode="SourceObjectListType" />
<xsl:apply-templates select="Points" mode="copy" />
<xsl:apply-templates select="ActivityTime" mode="ActivityTimeType" />
<xsl:apply-templates select="AssessmentRefId" mode="copy" />
<xsl:apply-templates select="MaxAttemptsAllowed" mode="copy" />
<xsl:apply-templates select="ActivityWeight" mode="copy" />
<xsl:apply-templates select="Evaluation" mode="ActivityEvaluationType" />
<xsl:apply-templates select="LearningResources" mode="LearningResourceRefIdListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Assignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Students" mode="StudentPersonalRefIdListType" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="TechnicalRequirements" mode="TechnicalRequirementsType" />
<xsl:apply-templates select="SoftwareRequirementList" mode="SoftwareRequirementListType" />
<xsl:apply-templates select="EssentialMaterials" mode="EssentialMaterialListType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Preamble" mode="copy" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectiveListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="Prerequisites" mode="PrerequisiteListType" />
<xsl:apply-templates select="SourceObjects" mode="SourceObjectListType" />
<xsl:apply-templates select="AssignmentTime" mode="AssignmentTimeType" />
<xsl:apply-templates select="MaxAttemptsAllowed" mode="copy" />
<xsl:apply-templates select="AddToGradeBookFlag" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningResource" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
<xsl:apply-templates select="Contacts" mode="LearningResourceContactListType" />
<xsl:apply-templates select="Location" mode="LearningResourceLocationType" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SubjectAreas" mode="SubjectAreaListType" />
<xsl:apply-templates select="MediaTypes" mode="MediaTypeListType" />
<xsl:apply-templates select="UseAgreement" mode="copy" />
<xsl:apply-templates select="AgreementDate" mode="copy" />
<xsl:apply-templates select="Approvals" mode="ApprovalListType" />
<xsl:apply-templates select="Evaluations" mode="LearningResourceEvaluationListType" />
<xsl:apply-templates select="Components" mode="LearningResourceComponentListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="LearningResourcePackageRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningResourcePackage" mode="object">
<xsl:apply-templates select="." mode="AbstractContentPackageType" />
</xsl:template>
<xsl:template match="ContentCatalog" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ContentObject" mode="ContentObjectType" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
<xsl:apply-templates select="LanguageCode" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SubjectAreas" mode="SubjectAreaListType" />
<xsl:apply-templates select="MediaTypes" mode="MediaTypeListType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardListType" />
<xsl:apply-templates select="InstructionalLevel" mode="ContentCatalogInstructionalLevelType" />
<xsl:apply-templates select="TechnicalRequirements" mode="TechnicalRequirementsType" />
<xsl:apply-templates select="Duration" mode="DurationType" />
<xsl:apply-templates select="CurriculumHierarchyList" mode="CurriculumHierarchyListType" />
<xsl:apply-templates select="Prerequisites" mode="PrerequisiteListType" />
<xsl:apply-templates select="Adaptations" mode="copy" />
<xsl:apply-templates select="Size" mode="copy" />
<xsl:apply-templates select="Cost" mode="MonetaryAmountType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonRoleAssociation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonRefId" mode="copy" />
<xsl:apply-templates select="AssociatedRoleRefId" mode="AssociatedRoleRefIdType" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="AuthoritativeSource" mode="copy" />
<xsl:apply-templates select="Creator" mode="TypedCreator2Type" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ResponseToIntervention" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RTILocalId" mode="LocalIdType" />
<xsl:apply-templates select="LocationWhereInterventionDelivered" mode="copy" />
<xsl:apply-templates select="InterventionProviderNames" mode="InterventionProviderNameListType" />
<xsl:apply-templates select="Tier" mode="copy" />
<xsl:apply-templates select="Interventions" mode="InterventionListType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardItemRefIdListType" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectiveListType" />
<xsl:apply-templates select="Measurements" mode="ResponseToInterventionMeasurementListType" />
<xsl:apply-templates select="Baselines" mode="BaselineListType" />
<xsl:apply-templates select="Targets" mode="TargetListType" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="ProjectedExitDate" mode="copy" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="FrequencyTime" mode="InterventionFrequencyTimeType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="RTIResults" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RTILocalId" mode="LocalIdType" />
<xsl:apply-templates select="Intervention" mode="copy" />
<xsl:apply-templates select="PerformanceIndicators" mode="PerformanceIndicatorListType" />
<xsl:apply-templates select="Measurements" mode="ResponseToInterventionMeasurementListType" />
<xsl:apply-templates select="Baselines" mode="BaselineListType" />
<xsl:apply-templates select="Targets" mode="TargetListType" />
<xsl:apply-templates select="Results" mode="ResultListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningStandardAssociation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RefURI" mode="copy" />
<xsl:apply-templates select="LearningStandardRefId" mode="copy" />
<xsl:apply-templates select="TargetObjects" mode="TargetObjectListType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="AuthoritativeSource" mode="copy" />
<xsl:apply-templates select="Creator" mode="TypedCreatorType" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LibraryPatronStatus" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="TransactionList" mode="LibraryTransactionListType" />
<xsl:apply-templates select="MessageList" mode="LibraryMessageListType" />
<xsl:apply-templates select="NumberOfCheckouts" mode="copy" />
<xsl:apply-templates select="NumberOfOverdues" mode="copy" />
<xsl:apply-templates select="NumberOfFines" mode="copy" />
<xsl:apply-templates select="FineAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="NumberOfRefunds" mode="copy" />
<xsl:apply-templates select="RefundAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Address" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GridLocation" mode="GridLocationType" />
<xsl:apply-templates select="AddressType" mode="copy" />
<xsl:apply-templates select="LocalId" mode="gLocalIdType" />
<xsl:apply-templates select="Street" mode="gStreetType" />
<xsl:apply-templates select="City" mode="copy" />
<xsl:apply-templates select="Subregion" mode="AddressSubregionType" />
<xsl:apply-templates select="StateProvince" mode="AddressStateProvinceType" />
<xsl:apply-templates select="Country" mode="AddressCountryType" />
<xsl:apply-templates select="PostalCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentProgramAssociation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="ProgramRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="SchoolYear" mode="copy" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="EntryType" mode="copy" />
<xsl:apply-templates select="YearGroup" mode="StudentProgramAssociationYearGroupType" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="ExitStatus" mode="StudentProgramAssociationExitStatusType" />
<xsl:apply-templates select="ExitType" mode="StudentProgramAssociationExitTypeType" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="FTPTStatus" mode="gFullTimeStatusType" />
<xsl:apply-templates select="PlacementType" mode="StudentProgramAssociationPlacementTypeType" />
<xsl:apply-templates select="ManagingSchoolLocalId" mode="gLocalIdType" />
<xsl:apply-templates select="ManagingSchoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="FundingSourceList" mode="fundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentActivityInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="StudentActivityType" mode="StudentActivityTypeType" />
<xsl:apply-templates select="StudentActivityLevel" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="CurricularStatus" mode="copy" />
<xsl:apply-templates select="Location" mode="LocationType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentActivityParticipation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParticipationComment" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
<xsl:apply-templates select="RecognitionList" mode="RecognitionListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="DisciplineIncident" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AgencyReporting" mode="copy" />
<xsl:apply-templates select="IncidentNumber" mode="copy" />
<xsl:apply-templates select="IncidentDate" mode="copy" />
<xsl:apply-templates select="IncidentTime" mode="IncidentTimeType" />
<xsl:apply-templates select="IncidentLocation" mode="IncidentLocationType" />
<xsl:apply-templates select="IncidentLocationRefId" mode="DisciplineIncidentIncidentLocationRefIdType" />
<xsl:apply-templates select="IncidentCost" mode="copy" />
<xsl:apply-templates select="IncidentReporter" mode="IncidentReporterType" />
<xsl:apply-templates select="RelatedToList" mode="RelatedToListType" />
<xsl:apply-templates select="WeaponTypeList" mode="WeaponTypeListType" />
<xsl:apply-templates select="IncidentCategory" mode="IncidentCategoryContainerType" />
<xsl:apply-templates select="OffenderList" mode="OffenderListType" />
<xsl:apply-templates select="VictimList" mode="VictimListType" />
<xsl:apply-templates select="IncidentDescription" mode="copy" />
<xsl:apply-templates select="IncidentActionList" mode="IncidentActionListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CalendarSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="DaysInSession" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="FirstInstructionDate" mode="copy" />
<xsl:apply-templates select="LastInstructionDate" mode="copy" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="InstructionalMinutes" mode="copy" />
<xsl:apply-templates select="MinutesPerDay" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CalendarDate" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CalendarDateType" mode="CalendarDateInfoType" />
<xsl:apply-templates select="CalendarDateNumber" mode="copy" />
<xsl:apply-templates select="StudentAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="TeacherAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="AdministratorAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="BellScheduleDayList" mode="BellScheduleDayListType" />
<xsl:apply-templates select="InstructionalDeliveryModeList" mode="InstructionalDeliveryModeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentAttendanceSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="StartDay" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="EndDay" mode="copy" />
<xsl:apply-templates select="Resident" mode="copy" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="DaysAttended" mode="copy" />
<xsl:apply-templates select="ExcusedAbsences" mode="copy" />
<xsl:apply-templates select="UnexcusedAbsences" mode="copy" />
<xsl:apply-templates select="DaysTardy" mode="copy" />
<xsl:apply-templates select="DaysInMembership" mode="copy" />
<xsl:apply-templates select="InstructionalDeliveryModeList" mode="InstructionalDeliveryModeListType" />
<xsl:apply-templates select="ExpectationsMets" mode="copy" />
<xsl:apply-templates select="ExpectationsNotMets" mode="copy" />
<xsl:apply-templates select="StudentSchoolEnrollmentRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AttendanceCodeInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="copy" />
<xsl:apply-templates select="AttendanceType" mode="copy" />
<xsl:apply-templates select="AttendanceStatus" mode="AttendanceCodeInfoAttendanceStatusType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="AbsenceValue" mode="copy" />
<xsl:apply-templates select="UsedForDailyAttendance" mode="AttendanceCodeInfoUsedForDailyAttendanceType" />
<xsl:apply-templates select="UsedForPeriodAttendance" mode="AttendanceCodeInfoUsedForPeriodAttendanceType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="RoomInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoomNumber" mode="copy" />
<xsl:apply-templates select="StaffList" mode="StaffListType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Building" mode="copy" />
<xsl:apply-templates select="HomeroomNumber" mode="copy" />
<xsl:apply-templates select="Size" mode="copy" />
<xsl:apply-templates select="Capacity" mode="copy" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
<xsl:apply-templates select="RoomTypeRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="RoomType" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolCourseInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CourseCode" mode="CourseCodeType" />
<xsl:apply-templates select="StateCourseCode" mode="StateCourseCodeType" />
<xsl:apply-templates select="DistrictCourseCode" mode="DistrictCourseCodeType" />
<xsl:apply-templates select="SubjectAreaList" mode="SubjectAreaListType" />
<xsl:apply-templates select="CourseTitle" mode="CourseTitleType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="InstructionalLevel" mode="InstructionalLevelType" />
<xsl:apply-templates select="CourseCredits" mode="CourseCreditsType" />
<xsl:apply-templates select="CoreAcademicCourse" mode="copy" />
<xsl:apply-templates select="GraduationRequirement" mode="SchoolCourseInfoGraduationRequirementType" />
<xsl:apply-templates select="Department" mode="copy" />
<xsl:apply-templates select="SCEDCode" mode="SCEDCodeType" />
<xsl:apply-templates select="DualCredit" mode="SchoolCourseInfoDualCreditType" />
<xsl:apply-templates select="CTEConcentrator" mode="SchoolCourseInfoCTEConcentratorType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="StateProvinceIdSystem" mode="copy" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SchoolName" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="OtherLEA" mode="copy" />
<xsl:apply-templates select="SchoolType" mode="SchoolInfoSchoolTypeType" />
<xsl:apply-templates select="SchoolFocusList" mode="SchoolFocusListType" />
<xsl:apply-templates select="SchoolURL" mode="SchoolURLType" />
<xsl:apply-templates select="PrincipalInfo" mode="PrincipalInfoType" />
<xsl:apply-templates select="SchoolContactList" mode="SchoolContactListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="AddressRefIdList" mode="AddressRefIdListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="IdentificationInfoList" mode="IdentificationInfoListType" />
<xsl:apply-templates select="SessionType" mode="SchoolInfoSessionTypeType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="Title1Status" mode="SchoolInfoTitle1StatusType" />
<xsl:apply-templates select="TitleIProgramType" mode="SchoolInfoTitleIProgramTypeType" />
<xsl:apply-templates select="OperationalStatus" mode="OperationalStatusType" />
<xsl:apply-templates select="OperationalStatusDate" mode="copy" />
<xsl:apply-templates select="SchoolImprovementStatus" mode="SchoolInfoSchoolImprovementStatusType" />
<xsl:apply-templates select="StatePovertyDesignation" mode="SchoolInfoStatePovertyDesignationType" />
<xsl:apply-templates select="NationalSchoolLunchProgramStatus" mode="SchoolInfoNationalSchoolLunchProgramStatusType" />
<xsl:apply-templates select="SchoolCharter" mode="SchoolCharterType" />
<xsl:apply-templates select="SharedTimeIndicator" mode="SchoolInfoSharedTimeIndicatorType" />
<xsl:apply-templates select="VirtualSchoolStatus" mode="SchoolInfoVirtualSchoolStatusType" />
<xsl:apply-templates select="CongressionalDistrict" mode="CongressionalDistrictType" />
<xsl:apply-templates select="ActiveSchoolYear" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SectionInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ScheduleInfoList" mode="ScheduleInfoListType" />
<xsl:apply-templates select="MediumOfInstruction" mode="MediumOfInstructionType" />
<xsl:apply-templates select="InstructionalDeliveryModeList" mode="InstructionalDeliveryModeListType" />
<xsl:apply-templates select="LanguageOfInstruction" mode="LanguageOfInstructionType" />
<xsl:apply-templates select="LocationOfInstruction" mode="LocationOfInstructionType" />
<xsl:apply-templates select="SummerSchool" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoOverride" mode="SchoolCourseInfoOverrideType" />
<xsl:apply-templates select="CourseSectionCode" mode="copy" />
<xsl:apply-templates select="SectionCode" mode="copy" />
<xsl:apply-templates select="CountForAttendance" mode="SectionInfoCountForAttendanceType" />
<xsl:apply-templates select="BellScheduleRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="AddressRefIdList" mode="AddressRefIdListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentContact" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="Relationship" mode="RelationshipType" />
<xsl:apply-templates select="EmployerType" mode="copy" />
<xsl:apply-templates select="EducationalLevel" mode="EducationalLevelType" />
<xsl:apply-templates select="ContactFlags" mode="ContactFlagsType" />
<xsl:apply-templates select="ContactSequence" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentDailyAttendance" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AttendanceCodeInfoRefId" mode="copy" />
<xsl:apply-templates select="TimeIn" mode="copy" />
<xsl:apply-templates select="TimeOut" mode="copy" />
<xsl:apply-templates select="AttendanceNote" mode="copy" />
<xsl:apply-templates select="InstructionalDeliveryMode" mode="InstructionalDeliveryModeType" />
<xsl:apply-templates select="ExpectationsMet" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlertMessages" mode="AlertMessagesType" />
<xsl:apply-templates select="MedicalAlertMessages" mode="MedicalAlertMessagesType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="RemoteLearningLocationProfileList" mode="RemoteLearningLocationProfileListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="AddressRefIdList" mode="AddressRefIdListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="CohortYear" mode="OnTimeGraduationYearType" />
<xsl:apply-templates select="ProjectedGraduationYear" mode="ProjectedGraduationYearType" />
<xsl:apply-templates select="OnTimeGraduationYear" mode="OnTimeGraduationYearType" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="MostRecent" mode="StudentMostRecentContainerType" />
<xsl:apply-templates select="AcceptableUsePolicy" mode="copy" />
<xsl:apply-templates select="IDEA" mode="StudentPersonalIDEAType" />
<xsl:apply-templates select="Migrant" mode="StudentPersonalMigrantType" />
<xsl:apply-templates select="Title1" mode="StudentPersonalTitle1Type" />
<xsl:apply-templates select="GiftedTalented" mode="StudentPersonalGiftedTalentedType" />
<xsl:apply-templates select="EconomicDisadvantage" mode="StudentPersonalEconomicDisadvantageType" />
<xsl:apply-templates select="ELL" mode="StudentPersonalELLType" />
<xsl:apply-templates select="Homeless" mode="StudentPersonalHomelessType" />
<xsl:apply-templates select="HomelessServicedIndicator" mode="StudentPersonalHomelessServicedIndicatorType" />
<xsl:apply-templates select="Section504" mode="StudentPersonalSection504Type" />
<xsl:apply-templates select="VocationalConcentrator" mode="StudentPersonalVocationalConcentratorType" />
<xsl:apply-templates select="Immigrant" mode="StudentPersonalImmigrantType" />
<xsl:apply-templates select="NeglectedDelinquent" mode="StudentPersonalNeglectedDelinquentType" />
<xsl:apply-templates select="FirstUSEnrollment" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPicture" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PictureSource" mode="PictureSourceType" />
<xsl:apply-templates select="OKToPublish" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSchoolEnrollment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="EntryType" mode="StudentEntryTypeType" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="Homeroom" mode="copy" />
<xsl:apply-templates select="Advisor" mode="StudentSchoolEnrollmentAdvisorType" />
<xsl:apply-templates select="Counselor" mode="StudentSchoolEnrollmentCounselorType" />
<xsl:apply-templates select="Calendar" mode="StudentSchoolEnrollmentCalendarType" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="ExitStatus" mode="StudentExitStatusType" />
<xsl:apply-templates select="ExitType" mode="StudentExitTypeType" />
<xsl:apply-templates select="ExitGradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="RecordClosureReason" mode="copy" />
<xsl:apply-templates select="PromotionInfo" mode="PromotionInfoType" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="FTPTStatus" mode="StudentSchoolEnrollmentFTPTStatusType" />
<xsl:apply-templates select="ResidencyStatus" mode="ResidencyStatusType" />
<xsl:apply-templates select="NonResidentAttendReason" mode="StudentSchoolEnrollmentNonResidentAttendReasonType" />
<xsl:apply-templates select="ResponsableSchoolList" mode="ResponsableSchoolListType" />
<xsl:apply-templates select="ResponsableLEAList" mode="ResponsableLEAListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSectionEnrollment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="ScheduleInfoOverrideList" mode="ScheduleInfoOverrideListType" />
<xsl:apply-templates select="InstructionalDeliveryModeList" mode="InstructionalDeliveryModeListType" />
<xsl:apply-templates select="CreditsAttempted" mode="CreditsAttemptedType" />
<xsl:apply-templates select="DualCredit" mode="copy" />
<xsl:apply-templates select="CTEConcentrator" mode="StudentSectionEnrollmentCTEConcentratorType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TermInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="RelativeDuration" mode="copy" />
<xsl:apply-templates select="TermCode" mode="copy" />
<xsl:apply-templates select="Track" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="TermSpanType" />
<xsl:apply-templates select="MarkingTerm" mode="copy" />
<xsl:apply-templates select="SchedulingTerm" mode="TermInfoSchedulingTermType" />
<xsl:apply-templates select="AttendanceTerm" mode="TermInfoAttendanceTermType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSnapshot" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="RaceList" mode="RaceListType" />
<xsl:apply-templates select="HispanicLatino" mode="copy" />
<xsl:apply-templates select="Gender" mode="StudentSnapshotGenderType" />
<xsl:apply-templates select="BirthDate" mode="BirthDateType" />
<xsl:apply-templates select="Age" mode="copy" />
<xsl:apply-templates select="ProjectedGraduationYear" mode="ProjectedGraduationYearType" />
<xsl:apply-templates select="OnTimeGraduationYear" mode="OnTimeGraduationYearType" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="GraduationAward" mode="StudentSnapshotGraduationAwardType" />
<xsl:apply-templates select="GraduationOnTime" mode="StudentSnapshotGraduationOnTimeType" />
<xsl:apply-templates select="HomeEnrollment" mode="HomeEnrollmentType" />
<xsl:apply-templates select="IDEA" mode="StudentSnapshotIDEAType" />
<xsl:apply-templates select="Migrant" mode="StudentSnapshotMigrantType" />
<xsl:apply-templates select="Title1" mode="StudentSnapshotTitle1Type" />
<xsl:apply-templates select="GiftedTalented" mode="StudentSnapshotGiftedTalentedType" />
<xsl:apply-templates select="EconomicDisadvantage" mode="StudentSnapshotEconomicDisadvantageType" />
<xsl:apply-templates select="ELL" mode="StudentSnapshotELLType" />
<xsl:apply-templates select="Homeless" mode="StudentSnapshotHomelessType" />
<xsl:apply-templates select="Section504" mode="StudentSnapshotSection504Type" />
<xsl:apply-templates select="VocationalConcentrator" mode="StudentSnapshotVocationalConcentratorType" />
<xsl:apply-templates select="Immigrant" mode="StudentSnapshotImmigrantType" />
<xsl:apply-templates select="NeglectedDelinquent" mode="StudentSnapshotNeglectedDelinquentType" />
<xsl:apply-templates select="FreeAndReducedStatus" mode="StudentSnapshotFreeAndReducedStatusType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LEAInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="LocalIdSystem" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="LEAName" mode="LEANameType" />
<xsl:apply-templates select="LEAURL" mode="copy" />
<xsl:apply-templates select="EducationAgencyType" mode="EducationAgencyTypeType" />
<xsl:apply-templates select="LEAContactList" mode="LEAContactListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="AddressRefIdList" mode="AddressRefIdListType" />
<xsl:apply-templates select="IdentificationInfoList" mode="IdentificationInfoListType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="OperationalStatus" mode="OperationalStatusType" />
<xsl:apply-templates select="OperationalStatusDate" mode="copy" />
<xsl:apply-templates select="CongressionalDistrict" mode="CongressionalDistrictType" />
<xsl:apply-templates select="TitleIProgramType" mode="LEAInfoTitleIProgramTypeType" />
<xsl:apply-templates select="TitleIIILanguageInstructionProgramType" mode="LEAInfoTitleIIILanguageInstructionProgramTypeType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="PrimaryAssignment" mode="copy" />
<xsl:apply-templates select="JobStartDate" mode="copy" />
<xsl:apply-templates select="JobEndDate" mode="copy" />
<xsl:apply-templates select="JobFTE" mode="copy" />
<xsl:apply-templates select="JobFunction" mode="JobFunctionType" />
<xsl:apply-templates select="TeachingAssignment" mode="TeachingAssignmentType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="ItinerantTeacher" mode="StaffAssignmentItinerantTeacherType" />
<xsl:apply-templates select="InstructionalLevel" mode="InstructionalLevelType" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BellSchedule" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="BellScheduleName" mode="copy" />
<xsl:apply-templates select="TimetableDayList" mode="TimetableDayListType" />
<xsl:apply-templates select="TimetablePeriodList" mode="TimetablePeriodListType" />
<xsl:apply-templates select="BellPeriodList" mode="BellPeriodListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentContactPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonInfo" mode="PersonInfoType" />
<xsl:apply-templates select="EmployerType" mode="copy" />
<xsl:apply-templates select="EducationLevel" mode="EducationalLevelType" />
<xsl:apply-templates select="OptOutEmail" mode="StudentContactPersonalOptOutEmailType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentContactRelationship" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Relationship" mode="RelationshipType" />
<xsl:apply-templates select="ContactFlags" mode="ContactFlagsType" />
<xsl:apply-templates select="ContactSequence" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffSectionAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="SectionInfoRefId" mode="copy" />
<xsl:apply-templates select="AssignmentStartDate" mode="copy" />
<xsl:apply-templates select="AssignmentEndDate" mode="copy" />
<xsl:apply-templates select="TeacherOfRecord" mode="copy" />
<xsl:apply-templates select="Roles" mode="RolesType" />
<xsl:apply-templates select="PercentResponsible" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffEvaluation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="EvaluatorStateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="BargainingUnit" mode="copy" />
<xsl:apply-templates select="EvaluationCycleName" mode="copy" />
<xsl:apply-templates select="EvaluationPreconferenceDate" mode="copy" />
<xsl:apply-templates select="ProjectedEvaluationDate" mode="copy" />
<xsl:apply-templates select="EvaluationDate" mode="copy" />
<xsl:apply-templates select="EvaluationPostconferenceDate" mode="copy" />
<xsl:apply-templates select="EvaluationSystem" mode="copy" />
<xsl:apply-templates select="EvaluationParts" mode="EvaluationPartsType" />
<xsl:apply-templates select="EvaluationHolisticScore" mode="copy" />
<xsl:apply-templates select="EvaluationHolisticScale" mode="copy" />
<xsl:apply-templates select="EvaluationRecommendation" mode="EvaluationRecommendationType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SectionCorrelation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CorrelationName" mode="copy" />
<xsl:apply-templates select="CorrelationType" mode="CorrelationTypeType" />
<xsl:apply-templates select="CorrelationSectionList" mode="CorrelationSectionListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolAccountability" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GunFreeSchoolsActReportingStatus" mode="copy" />
<xsl:apply-templates select="HighSchoolGraduationRateIndicatorStatus" mode="SchoolAccountabilityHighSchoolGraduationRateIndicatorStatusType" />
<xsl:apply-templates select="PersistentlyDangerousStatus" mode="SchoolAccountabilityPersistentlyDangerousStatusType" />
<xsl:apply-templates select="ProficiencyTargetStatusForMath" mode="SchoolAccountabilityProficiencyTargetStatusForMathType" />
<xsl:apply-templates select="ProficiencyTargetStatusForReadingAndLanguageArts" mode="SchoolAccountabilityProficiencyTargetStatusForReadingAndLanguageArtsType" />
<xsl:apply-templates select="SchoolOperationalStatus" mode="SchoolAccountabilitySchoolOperationalStatusType" />
<xsl:apply-templates select="ReconstitutedStatus" mode="SchoolAccountabilityReconstitutedStatusType" />
<xsl:apply-templates select="SchoolImprovementExitDate" mode="copy" />
<xsl:apply-templates select="SchoolImprovementFundsStatus" mode="SchoolAccountabilitySchoolImprovementFundsStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LEAAccountability" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GunFreeSchoolsActReportingStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolFederalFund" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ConsolidatedMEPFundsStatus" mode="copy" />
<xsl:apply-templates select="SchoolImprovementAllocation" mode="copy" />
<xsl:apply-templates select="SchoolImprovementGrantInterventionType" mode="SchoolFederalFundSchoolImprovementGrantInterventionTypeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LEAFederalFund" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FederalProgramList" mode="FederalProgramListType" />
<xsl:apply-templates select="REAPAlternativeFundingStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentMigrant" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ServicesType" mode="copy" />
<xsl:apply-templates select="PrioritizedForServices" mode="StudentMigrantPrioritizedForServicesType" />
<xsl:apply-templates select="QualifyingArrivalDate" mode="copy" />
<xsl:apply-templates select="ProgramStartDate" mode="copy" />
<xsl:apply-templates select="ProgramExitDate" mode="copy" />
<xsl:apply-templates select="ContinuationOfServicesReason" mode="StudentMigrantContinuationOfServicesReasonType" />
<xsl:apply-templates select="ContinuationOfServicesStatus" mode="StudentMigrantContinuationOfServicesStatusType" />
<xsl:apply-templates select="LastQualifyingMoveDate" mode="copy" />
<xsl:apply-templates select="ExpirationDate" mode="copy" />
<xsl:apply-templates select="EnrollmentType" mode="StudentMigrantEnrollmentTypeType" />
<xsl:apply-templates select="ParticipationStatus" mode="StudentMigrantParticipationStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusEquipment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="VehicleNumber" mode="copy" />
<xsl:apply-templates select="SeatingCapacity" mode="copy" />
<xsl:apply-templates select="Contractor" mode="copy" />
<xsl:apply-templates select="EquipmentList" mode="BusInfoEquipmentListType" />
<xsl:apply-templates select="ManufactureYear" mode="copy" />
<xsl:apply-templates select="VehicleIdentificationNumber" mode="copy" />
<xsl:apply-templates select="LicensePlateNumber" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusRouteDetail" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BusStopInfoRefId" mode="copy" />
<xsl:apply-templates select="ArrivalTime" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusRouteInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BusInfoRefId" mode="copy" />
<xsl:apply-templates select="RouteNumber" mode="copy" />
<xsl:apply-templates select="RouteType" mode="copy" />
<xsl:apply-templates select="MaximumLoad" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="RouteDurationLoaded" mode="copy" />
<xsl:apply-templates select="RouteDurationTotal" mode="copy" />
<xsl:apply-templates select="RouteDistanceLoaded" mode="DistanceType" />
<xsl:apply-templates select="RouteDistanceTotal" mode="DistanceType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusStopInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="GridLocation" mode="GridLocationType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentTransportInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Eligibility" mode="copy" />
<xsl:apply-templates select="HomeToSchoolDistance" mode="DistanceType" />
<xsl:apply-templates select="WalkToStopDistance" mode="DistanceType" />
<xsl:apply-templates select="StopToSchoolDistance" mode="DistanceType" />
<xsl:apply-templates select="OriginPoint" mode="OriginPointType" />
<xsl:apply-templates select="HomeBusRouteDetail" mode="copy" />
<xsl:apply-templates select="TransferPoints" mode="TransferPointListType" />
<xsl:apply-templates select="SchoolBusRouteDetail" mode="StudentTransportInfoSchoolBusRouteDetailType" />
<xsl:apply-templates select="DestinationPoint" mode="DestinationPointType" />
<xsl:apply-templates select="StateAidQualification" mode="StudentTransportInfoStateAidQualificationType" />
<xsl:apply-templates select="TransportationStatus" mode="StudentTransportInfoTransportationStatusType" />
<xsl:apply-templates select="PublicExpense" mode="StudentTransportInfoPublicExpenseType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="BusPositionInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Time" mode="copy" />
<xsl:apply-templates select="GridLocation" mode="GridLocationType" />
<xsl:apply-templates select="TelematicsId" mode="copy" />
<xsl:apply-templates select="TelemetryList" mode="TelemetryListType" />
<xsl:apply-templates select="BusDriver" mode="BusStaffType" />
<xsl:apply-templates select="BusStaffList" mode="BusStaffListType" />
<xsl:apply-templates select="RouteStatus" mode="BusRouteStatusType" />
<xsl:apply-templates select="OtherStatus" mode="copy" />
<xsl:apply-templates select="Odometer" mode="DistanceType" />
<xsl:apply-templates select="Speedometer" mode="DistanceType" />
<xsl:apply-templates select="Students" mode="BusPositionStudentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Authentication" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AuthenticationInfo" mode="AuthenticationInfoType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EnergyUsage" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UsageLocationInfo" mode="EnergyUsageLocationInfoType" />
<xsl:apply-templates select="DataSource" mode="EnergyUsageDataSourceType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="IdMApplication" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="URI" mode="copy" />
<xsl:apply-templates select="DefaultFunction" mode="copy" />
<xsl:apply-templates select="FunctionList" mode="FunctionListType" />
<xsl:apply-templates select="DefaultIdentityProvider" mode="copy" />
<xsl:apply-templates select="IdentityProviderList" mode="IdentityProviderListType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="IdMAuthentication" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UserOrganizationAssociationRefId" mode="copy" />
<xsl:apply-templates select="ApplicationRefId" mode="copy" />
<xsl:apply-templates select="IdentityProviderLoginId" mode="copy" />
<xsl:apply-templates select="IdentityProviderType" mode="copy" />
<xsl:apply-templates select="AuthoritativeSourceId" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="IdMAuthorization" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UserOrganizationAssociationRefId" mode="copy" />
<xsl:apply-templates select="ApplicationRefId" mode="copy" />
<xsl:apply-templates select="ApplicationFunction" mode="copy" />
<xsl:apply-templates select="AuthoritativeSourceId" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="UserOrganizationAssociation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonRefId" mode="UserOrganizationAssociationPersonRefIdType" />
<xsl:apply-templates select="OrganizationRefId" mode="copy" />
<xsl:apply-templates select="AssociationType" mode="copy" />
<xsl:apply-templates select="AuthoritativeSourceId" mode="RefIdType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonPrivacyObligationDocument" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentRefId" mode="copy" />
<xsl:apply-templates select="ParentObjectTypeName" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SettingLocationList" mode="SettingLocationListType" />
<xsl:apply-templates select="ContactForRequestsRefId" mode="copy" />
<xsl:apply-templates select="ContactForRequestsObjectTypeName" mode="copy" />
<xsl:apply-templates select="ConsentToSharingOfData" mode="ConsentToSharingOfDataContainerType" />
<xsl:apply-templates select="PermissionToParticipateList" mode="PermissionToParticipateListType" />
<xsl:apply-templates select="ApplicableLawList" mode="ApplicableLawListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InstructionalLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GiftedTalentedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningObjectivesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningObjective" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InstructionalStrategiesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InstructionalStrategy" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PhoneNumberListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FSCountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
<xsl:apply-templates select="EarnedStatus" mode="EarnedStatusType" />
<xsl:apply-templates select="MealType" mode="copy" />
<xsl:apply-templates select="Amount" mode="FSAmountType" />
<xsl:apply-templates select="Tax" mode="MonetaryAmountType" />
<xsl:apply-templates select="Value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InterestLevelsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InterestLevel" mode="GradeLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmailListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Email" mode="EmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherNameType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="RightsElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Cost" mode="copy" />
<xsl:apply-templates select="FeesForUse" mode="FeesForUseType" />
<xsl:apply-templates select="CopyrightStatement" mode="copy" />
<xsl:apply-templates select="TermsOfUse" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EducationalLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Language" mode="LanguageContainerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MiddleNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubjectAreaListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MediaTypesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MediaType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FSAmountType">
<xsl:apply-templates select="." mode="MonetaryAmountType" />
</xsl:template>
<xsl:template match="node()|@*" mode="OtherIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherId" mode="OtherIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FundedProgramType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExceptionalityCategoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="ExceptionalityPriority" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RaceList" mode="RaceListType" />
<xsl:apply-templates select="HispanicLatino" mode="copy" />
<xsl:apply-templates select="Gender" mode="DemographicsGenderType" />
<xsl:apply-templates select="BirthDate" mode="BirthDateType" />
<xsl:apply-templates select="BirthDateVerification" mode="DemographicsBirthDateVerificationType" />
<xsl:apply-templates select="PlaceOfBirth" mode="copy" />
<xsl:apply-templates select="CountyOfBirth" mode="copy" />
<xsl:apply-templates select="StateOfBirth" mode="StateProvinceType" />
<xsl:apply-templates select="CountryOfBirth" mode="CountryType" />
<xsl:apply-templates select="CountriesOfCitizenship" mode="CountriesOfCitizenshipType" />
<xsl:apply-templates select="CountriesOfResidency" mode="CountriesOfResidencyType" />
<xsl:apply-templates select="CountryArrivalDate" mode="copy" />
<xsl:apply-templates select="CitizenshipStatus" mode="DemographicsCitizenshipStatusType" />
<xsl:apply-templates select="EnglishProficiency" mode="EnglishProficiencyType" />
<xsl:apply-templates select="LanguageList" mode="LanguageListType" />
<xsl:apply-templates select="DwellingArrangement" mode="DwellingArrangementType" />
<xsl:apply-templates select="MaritalStatus" mode="copy" />
<xsl:apply-templates select="MilitaryConnectedStudent" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseCreditsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GridLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Latitude" mode="copy" />
<xsl:apply-templates select="Longitude" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GradeLevelsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RefIdType">
<xsl:apply-templates select="." mode="GUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="SoftwareRequirementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SoftwareTitle" mode="copy" />
<xsl:apply-templates select="Version" mode="copy" />
<xsl:apply-templates select="Vendor" mode="copy" />
<xsl:apply-templates select="OS" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BloomsTaxonomyLevelsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BloomsTaxonomyLevel" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FeeForUseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UseType" mode="copy" />
<xsl:apply-templates select="MeteringType" mode="copy" />
<xsl:apply-templates select="MeteringURL" mode="copy" />
<xsl:apply-templates select="PerUseCharge" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MealStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TechnicalRequirementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TechnicalRequirement" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BirthDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolURLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeglectedDelinquentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExitDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpanGapType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="EndDateTime" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TextDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IDEAType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HomeroomNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FirstNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NamesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LastNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EconomicDisadvantageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ObjectNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountriesOfCitizenshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountryOfCitizenship" mode="CountryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PhoneNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Extension" mode="copy" />
<xsl:apply-templates select="ListedStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VersionWithWildcardsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="XMLDataType" />
<xsl:apply-templates select="TextData" mode="TextDataType" />
<xsl:apply-templates select="BinaryData" mode="TextDataType" />
<xsl:apply-templates select="Reference" mode="ReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CongressionalDistrictType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ImmigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ElectronicIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ElectronicId" mode="ElectronicIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ModificationHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Modified" mode="ModifiedType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItemsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MealType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_MetadataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElements" mode="TimeElementsType" />
<xsl:apply-templates select="LifeCycle" mode="LifeCycleType" />
<xsl:apply-templates select="RightsElements" mode="RightsElementsType" />
<xsl:apply-templates select="EducationFilter" mode="EducationFilterType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="PositionTitle" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="AddressRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="Section504Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TermSpanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StateProvinceIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HomelessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffParametersType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="SSN" mode="SSNType" />
<xsl:apply-templates select="Names" mode="NamesType" />
<xsl:apply-templates select="Addresses" mode="AddressListType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="Contacts" mode="ContactRelationshipsType" />
<xsl:apply-templates select="EffectiveDate" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StateProvinceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OnTimeGraduationYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GraduationRequirementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="URL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MultipleIntelligencesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MultipleIntelligence" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationCommonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Indicator" mode="copy" />
<xsl:apply-templates select="ReasonNotCompleting" mode="StudentParticipationCommonReasonNotCompletingType" />
<xsl:apply-templates select="ReasonNotTested" mode="StudentParticipationCommonReasonNotTestedType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCharterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ApprovalAgencyType" mode="copy" />
<xsl:apply-templates select="ApprovalDate" mode="copy" />
<xsl:apply-templates select="RenewalDate" mode="copy" />
<xsl:apply-templates select="ManagementOrganizationType" mode="SchoolCharterManagementOrganizationTypeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GradeLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactRelationshipsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Contact" mode="ContactRelationshipType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactRelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Relationship" mode="RelationshipType" />
<xsl:apply-templates select="Names" mode="NamesType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="EducationalLevel" mode="EducationalLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResidencyStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RaceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Race" mode="RaceCodeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ModifiedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="By" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NameOfRecordType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="SCEDCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CourseDescription" mode="copy" />
<xsl:apply-templates select="CourseLevel" mode="SCEDCodeCourseLevelType" />
<xsl:apply-templates select="AvailableCredit" mode="copy" />
<xsl:apply-templates select="SequenceNumber" mode="copy" />
<xsl:apply-templates select="SequenceLimit" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OperationalStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParametersType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="SSN" mode="SSNType" />
<xsl:apply-templates select="Names" mode="NamesType" />
<xsl:apply-templates select="Addresses" mode="AddressListType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="Contacts" mode="ContactRelationshipsType" />
<xsl:apply-templates select="EffectiveDate" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="SchoolAttendedName" mode="copy" />
<xsl:apply-templates select="SchoolAttendedLocation" mode="copy" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IdentificationInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IdRefType">
<xsl:apply-templates select="." mode="RefIdType" />
</xsl:template>
<xsl:template match="node()|@*" mode="CourseTitleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EducationFilterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MediaTypes" mode="MediaTypesType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SubjectAreas" mode="SubjectAreasType" />
<xsl:apply-templates select="InterestLevels" mode="InterestLevelsType" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardItemsType" />
<xsl:apply-templates select="BloomsTaxonomyLevels" mode="BloomsTaxonomyLevelsType" />
<xsl:apply-templates select="MultipleIntelligences" mode="MultipleIntelligencesType" />
<xsl:apply-templates select="InstructionalStrategies" mode="InstructionalStrategiesType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Summary" mode="copy" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectivesType" />
<xsl:apply-templates select="ResourceTypes" mode="ResourceTypesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ELLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_ExtendedElementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElement" mode="SIF_ExtendedElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NameType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="OldAddressType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Street" mode="StreetType" />
<xsl:apply-templates select="City" mode="copy" />
<xsl:apply-templates select="County" mode="copy" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="StateANSICode" mode="copy" />
<xsl:apply-templates select="Country" mode="CountryType" />
<xsl:apply-templates select="PostalCode" mode="copy" />
<xsl:apply-templates select="GridLocation" mode="GridLocationType" />
<xsl:apply-templates select="AddressRefId" mode="RefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RightsElementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RightsElement" mode="RightsElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="XMLDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Created" mode="CreatedType" />
<xsl:apply-templates select="ModificationHistory" mode="ModificationHistoryType" />
<xsl:apply-templates select="TimeElements" mode="TimeElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ID" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DistrictCourseCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportDataObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OrganizationRelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResidencyStatus" mode="ResidencyStatusType" />
<xsl:apply-templates select="ProvidingInstruction" mode="copy" />
<xsl:apply-templates select="ProvidingServices" mode="copy" />
<xsl:apply-templates select="FinanciallyResponsible" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GraduationDateType">
<xsl:apply-templates select="." mode="PartialDateType" />
</xsl:template>
<xsl:template match="node()|@*" mode="PrimaryAssignmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FeesForUseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FeeForUse" mode="FeeForUseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PartialDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ElectronicIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountriesOfResidencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountryOfResidency" mode="CountryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="LanguageType" mode="LanguageContainerLanguageTypeType" />
<xsl:apply-templates select="Dialect" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_ExtendedElementType">
<xsl:apply-templates select="." mode="ExtendedContentType" />
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolContact" mode="SchoolContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RaceCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="Proportion" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EarnedStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherNamesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="OtherNameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="Title1Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ServiceNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreatedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Creators" mode="CreatorsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExtendedParametersType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExtendedParameter" mode="ExtendedParameterType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubjectAreaType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MsgIdType">
<xsl:apply-templates select="." mode="GUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="SoftwareRequirementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SoftwareRequirement" mode="SoftwareRequirementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnglishProficiencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpanGapsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SpanGap" mode="SpanGapType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="EndDateTime" mode="copy" />
<xsl:apply-templates select="SpanGaps" mode="SpanGapsType" />
<xsl:apply-templates select="IsCurrent" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BinaryDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProjectedGraduationYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MeetingTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimetableDay" mode="copy" />
<xsl:apply-templates select="TimetablePeriod" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExtendedContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HispanicLatinoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BaseNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Prefix" mode="copy" />
<xsl:apply-templates select="LastName" mode="LastNameType" />
<xsl:apply-templates select="FirstName" mode="FirstNameType" />
<xsl:apply-templates select="MiddleName" mode="MiddleNameType" />
<xsl:apply-templates select="Suffix" mode="copy" />
<xsl:apply-templates select="PreferredName" mode="copy" />
<xsl:apply-templates select="SortName" mode="copy" />
<xsl:apply-templates select="FullName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NCESIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceTypesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PublishInDirectoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="URIOrBinaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VocationalConcentratorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StreetType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Line1" mode="copy" />
<xsl:apply-templates select="Line2" mode="copy" />
<xsl:apply-templates select="Line3" mode="copy" />
<xsl:apply-templates select="Complex" mode="copy" />
<xsl:apply-templates select="StreetNumber" mode="copy" />
<xsl:apply-templates select="StreetPrefix" mode="copy" />
<xsl:apply-templates select="StreetName" mode="copy" />
<xsl:apply-templates select="StreetType" mode="copy" />
<xsl:apply-templates select="StreetSuffix" mode="copy" />
<xsl:apply-templates select="ApartmentType" mode="copy" />
<xsl:apply-templates select="ApartmentNumberPrefix" mode="copy" />
<xsl:apply-templates select="ApartmentNumber" mode="copy" />
<xsl:apply-templates select="ApartmentNumberSuffix" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DefinedProtocolsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEANameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SSNType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MonetaryAmountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreatorsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Creator" mode="CreatorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubjectAreasType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocationName" mode="copy" />
<xsl:apply-templates select="LocationRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IdentificationInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IdentificationInfo" mode="IdentificationInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FederalProgramListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FederalProgram" mode="FederalProgramType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FederalProgramType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="FundingAllocation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpecialEductionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AgeGroupList" mode="AgeGroupListType" />
<xsl:apply-templates select="TitleList" mode="EmployeeTitleListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AgeGroupListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AgeGroup" mode="AgeGroupType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AgeGroupType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AgeGroup" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeTitleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TitleList" mode="EmployeeTitleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeTitleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PersonInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StateCourseCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExceptionalityCategoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExceptionalityCategory" mode="ExceptionalityCategoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportPackageType">
<xsl:apply-templates select="." mode="AbstractContentPackageType" />
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentPackageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="XMLDataType" />
<xsl:apply-templates select="TextData" mode="TextDataType" />
<xsl:apply-templates select="BinaryData" mode="BinaryDataType" />
<xsl:apply-templates select="Reference" mode="ReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentRecordPackageAbstractContentPackageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="XMLDataType" />
<xsl:apply-templates select="TextData" mode="TextDataType" />
<xsl:apply-templates select="BinaryData" mode="BinaryDataType" />
<xsl:apply-templates select="Reference" mode="ReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VersionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishInDirectory" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocalIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EntryDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GUIDType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SelectedContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExtendedParameterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_Name" mode="copy" />
<xsl:apply-templates select="SIF_Value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RolesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocationOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountsTowardAttendance" mode="copy" />
<xsl:apply-templates select="AttendanceValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlertMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VictimListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Victim" mode="VictimType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MedicalAlertMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimetablePeriodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimetablePeriod" mode="TimetablePeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BellPeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimetableDayIdentifier" mode="copy" />
<xsl:apply-templates select="TimetablePeriodIdentifier" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="EndTime" mode="copy" />
<xsl:apply-templates select="RegularSchoolPeriod" mode="copy" />
<xsl:apply-templates select="InstructionalMinutes" mode="copy" />
<xsl:apply-templates select="UseInAttendanceCalculations" mode="BellPeriodUseInAttendanceCalculationsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MedicalAlertMessagesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MedicalAlertMessage" mode="MedicalAlertMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SEAContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishInDirectory" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentActionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IncidentAction" mode="IncidentActionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PromotionInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PromotionStatus" mode="copy" />
<xsl:apply-templates select="Promotion" mode="PromotionType" />
<xsl:apply-templates select="Nonpromotion" mode="NonpromotionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreditsAttemptedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MeetingTimeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MeetingTime" mode="MeetingTimeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BellScheduleDayType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BellScheduleRefId" mode="copy" />
<xsl:apply-templates select="TimetableDayIdentifier" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OffenderListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Offender" mode="OffenderType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduleInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScheduleInfo" mode="ScheduleInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelatedToListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RelatedTo" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BellScheduleDayListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BellScheduleDay" mode="BellScheduleDayType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VictimType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="Injury" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IdentityProviderListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IdentityProvider" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WeaponTypeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="WeaponType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentActivityTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HomeEnrollmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentSchoolEnrollmentRefId" mode="copy" />
<xsl:apply-templates select="SchoolName" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="Homeroom" mode="copy" />
<xsl:apply-templates select="HomeroomNumber" mode="HomeroomNumberType" />
<xsl:apply-templates select="FullYearEnrollment" mode="HomeEnrollmentFullYearEnrollmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RoomListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoomInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Action" mode="DisciplineActionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MediumOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Duration" mode="copy" />
<xsl:apply-templates select="ZeroTolerance" mode="DisciplineActionZeroToleranceType" />
<xsl:apply-templates select="FullYearExpulsion" mode="DisciplineActionFullYearExpulsionType" />
<xsl:apply-templates select="ShortenedExpulsion" mode="DisciplineActionShortenedExpulsionType" />
<xsl:apply-templates select="PoliceNotification" mode="DisciplineActionPoliceNotificationType" />
<xsl:apply-templates select="Arrest" mode="DisciplineActionArrestType" />
<xsl:apply-templates select="AlternativeEducation" mode="DisciplineActionAlternativeEducationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PromotionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CorrelationSectionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FunctionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Function" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SEAContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SEAContact" mode="SEAContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAContact" mode="LEAContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RecognitionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Recognition" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OffenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="Injury" mode="copy" />
<xsl:apply-templates select="ManifestationDetermination" mode="ManifestationDeterminationType" />
<xsl:apply-templates select="ActionList" mode="DisciplineActionListType" />
<xsl:apply-templates select="WeaponTypeList" mode="WeaponTypeListType" />
<xsl:apply-templates select="RelatedToList" mode="RelatedToListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoOverrideType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CourseCode" mode="CourseCodeType" />
<xsl:apply-templates select="StateCourseCode" mode="StateCourseCodeType" />
<xsl:apply-templates select="DistrictCourseCode" mode="DistrictCourseCodeType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="CourseTitle" mode="CourseTitleType" />
<xsl:apply-templates select="InstructionalLevel" mode="InstructionalLevelType" />
<xsl:apply-templates select="CourseCredits" mode="CourseCreditsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentReporterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduleInfoOverrideType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MeetingTimeList" mode="MeetingTimeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CorrelationTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduleInfoOverrideListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScheduleInfoOverride" mode="ScheduleInfoOverrideType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMostRecentContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="HomeroomLocalId" mode="LocalIdType" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimetableDayListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimetableDay" mode="TimetableDayType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EDENInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FIPSStateCode" mode="copy" />
<xsl:apply-templates select="AgencyIdNumber" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingAssignmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PictureSourceType">
<xsl:apply-templates select="." mode="URIOrBinaryType" />
</xsl:template>
<xsl:template match="node()|@*" mode="CalendarDateInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ManifestationDeterminationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MeetingHeld" mode="copy" />
<xsl:apply-templates select="MeetingDate" mode="copy" />
<xsl:apply-templates select="DueToDisability" mode="ManifestationDeterminationDueToDisabilityType" />
<xsl:apply-templates select="MeetingOutcome" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentActionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Duration" mode="copy" />
<xsl:apply-templates select="ZeroTolerance" mode="copy" />
<xsl:apply-templates select="PoliceNotification" mode="IncidentActionPoliceNotificationType" />
<xsl:apply-templates select="Arrest" mode="IncidentActionArrestType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BellPeriodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BellPeriod" mode="BellPeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EducationAgencyTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimetableDayType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Identifier" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EvaluationPartsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EvaluationPart" mode="EvaluationPartType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NonpromotionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduleInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeacherList" mode="StaffListType" />
<xsl:apply-templates select="SectionRoomList" mode="RoomListType" />
<xsl:apply-templates select="MeetingTimeList" mode="MeetingTimeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentCategoryContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="CodeComment" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlertMessagesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlertMessage" mode="AlertMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PrincipalInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ContactName" mode="copy" />
<xsl:apply-templates select="ContactTitle" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishInDirectory" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EvaluationRecommendationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimetablePeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Identifier" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CorrelationSectionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CorrelationSection" mode="CorrelationSectionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentLegalGuardian" mode="copy" />
<xsl:apply-templates select="PickupRights" mode="ContactFlagsPickupRightsType" />
<xsl:apply-templates select="LivesWith" mode="ContactFlagsLivesWithType" />
<xsl:apply-templates select="AccessToRecords" mode="ContactFlagsAccessToRecordsType" />
<xsl:apply-templates select="EmergencyContact" mode="ContactFlagsEmergencyContactType" />
<xsl:apply-templates select="HasCustody" mode="ContactFlagsHasCustodyType" />
<xsl:apply-templates select="DisciplinaryContact" mode="ContactFlagsDisciplinaryContactType" />
<xsl:apply-templates select="PrimaryCareProvider" mode="ContactFlagsPrimaryCareProviderType" />
<xsl:apply-templates select="Other" mode="ContactFlagsOtherType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EvaluationPartType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Score" mode="copy" />
<xsl:apply-templates select="Scale" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolFocusListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolFocus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FinancialIncomeStatementMonetaryAmountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Amount" mode="FinancialIncomeStatementMonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurriculumStructureRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CurriculumStructureRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PerformanceLevelListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PerformanceLevel" mode="PerformanceLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceComponentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Reference" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Strategies" mode="LearningResourceComponentStrategyListType" />
<xsl:apply-templates select="AssociatedObjects" mode="AssociatedObjectListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentSummaryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentSchoolEnrollmentData" mode="StudentSchoolEnrollmentSummaryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryCourseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolAttendedRefId" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoData" mode="SchoolCourseInfoSummaryType" />
<xsl:apply-templates select="StartDate" mode="PartialDateType" />
<xsl:apply-templates select="EndDate" mode="PartialDateType" />
<xsl:apply-templates select="MarkingPeriods" mode="CourseHistoryMarkingPeriodListType" />
<xsl:apply-templates select="SectionInfoData" mode="CourseHistorySectionInfoDataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentSubTestRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AssessmentSubTestRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Document" mode="LearningStandardType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatementCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatementCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="StandardsSettingBody" mode="StandardsSettingBodyType" />
<xsl:apply-templates select="StatementCodes" mode="StatementCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkingPeriodSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermInfoData" mode="MarkingPeriodTermInfoDataType" />
<xsl:apply-templates select="GradeLevelWhenTaken" mode="GradeLevelType" />
<xsl:apply-templates select="MarkData" mode="MarkingPeriodMarkDataType" />
<xsl:apply-templates select="CourseCreditsAttempted" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusStaffListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BusStaff" mode="BusStaffType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItemRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentItemChoiceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Choice" mode="AssessmentItemChoiceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DwellingArrangementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TargetObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="AssociationStrength" mode="copy" />
<xsl:apply-templates select="AssociationType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ComponentObjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ComponentObject" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicFocusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryTermType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermInfoData" mode="CurrentCourseActivityTermInfoDataType" />
<xsl:apply-templates select="Courses" mode="CourseHistoryCourseListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceCustomerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
<xsl:apply-templates select="EarnedStatus" mode="EarnedStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryStudentPlacementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Service" mode="StudentPlacementServiceType" />
<xsl:apply-templates select="ServiceCategory" mode="copy" />
<xsl:apply-templates select="ServiceFundingSources" mode="StudentPlacementServiceFundingSourceListType" />
<xsl:apply-templates select="ServicingPublicAgency" mode="copy" />
<xsl:apply-templates select="ServicingSchool" mode="StudentPlacementDataServicingSchoolType" />
<xsl:apply-templates select="SchoolWhereServiceDelivered" mode="StudentPlacementDataSchoolWhereServiceDeliveredType" />
<xsl:apply-templates select="ServiceProviderType" mode="ServiceProviderTypeType" />
<xsl:apply-templates select="AgencyType" mode="copy" />
<xsl:apply-templates select="FrequencyTime" mode="FrequencyTimeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceEvaluationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PurchasingItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PurchasingItem" mode="PurchasingItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceReimbursementAgencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Rates" mode="FoodserviceReimbursementAgencyRateListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SimpleContactRelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Relationship" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="EducationalLevel" mode="EducationalLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BackgroundCheckListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BackgroundCheck" mode="BackgroundCheckType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementServiceFundingSourceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ServiceFundingSource" mode="StudentPlacementServiceFundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpecialConditionActionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SpecialCondition" mode="ActionListSpecialConditionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentGradeGradeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Percentage" mode="copy" />
<xsl:apply-templates select="Numeric" mode="copy" />
<xsl:apply-templates select="OutOf" mode="copy" />
<xsl:apply-templates select="Low" mode="copy" />
<xsl:apply-templates select="High" mode="copy" />
<xsl:apply-templates select="Letter" mode="copy" />
<xsl:apply-templates select="Narrative" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkingPeriodMarkDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Percentage" mode="copy" />
<xsl:apply-templates select="Numeric" mode="copy" />
<xsl:apply-templates select="NumericAsDecimal" mode="copy" />
<xsl:apply-templates select="Letter" mode="copy" />
<xsl:apply-templates select="Narrative" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsChoiceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Choice" mode="ItemCharacteristicsChoiceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentDescriptorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AssessmentDescriptor" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryTermListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Term" mode="CourseHistoryTermType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AdditionalGraduationRequirementPerformanceHistoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Requirement" mode="AdditionalGraduationRequirementPerformanceHistoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramFundingSourceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramFundingSource" mode="ProgramFundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeePersonalOtherIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodservicePurchaseQuantityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PurchaseQuantity" mode="FoodservicePurchaseQuantityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PartCTransitionMeetingNotHeldReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusPositionStudentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CalculationDate" mode="copy" />
<xsl:apply-templates select="SubmissionNumber" mode="copy" />
<xsl:apply-templates select="SubmissionReason" mode="copy" />
<xsl:apply-templates select="ReportSubmitterInfo" mode="ReportSubmitterInfoType" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuthorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyZoneTagListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Tag" mode="EnergyZoneTagType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlternateIdentificationCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageDataSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="EnergyUsageDataSourceType" />
<xsl:apply-templates select="System" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="ReadingDataList" mode="EnergyUsageDataSourceReadingDataListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelatedLearningStandardItemRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="RelatedLearningStandardItemRefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusInfoEquipmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Equipment" mode="BusInfoEquipmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ActivityRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementServiceFundingSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentStudentSnapshotType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RaceList" mode="RaceListType" />
<xsl:apply-templates select="HispanicLatino" mode="copy" />
<xsl:apply-templates select="Gender" mode="AssessmentStudentSnapshotGenderType" />
<xsl:apply-templates select="BirthDate" mode="BirthDateType" />
<xsl:apply-templates select="Title1" mode="AssessmentStudentSnapshotTitle1Type" />
<xsl:apply-templates select="ELL" mode="AssessmentStudentSnapshotELLType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusInfoEquipmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BusEquipmentRefId" mode="copy" />
<xsl:apply-templates select="Count" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherStudentRecordListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentRecordPackageRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HoldInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DatePlaced" mode="copy" />
<xsl:apply-templates select="DateNeeded" mode="copy" />
<xsl:apply-templates select="MadeAvailable" mode="copy" />
<xsl:apply-templates select="Expires" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalDataOtherIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherId" mode="StudentPersonalDataOtherIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LeastRestrictiveEnvironmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="EntryDate" mode="PartialDateType" />
<xsl:apply-templates select="ExitDate" mode="PartialDateType" />
<xsl:apply-templates select="EntryType" mode="StudentEntryTypeType" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="ExitStatus" mode="StudentExitStatusType" />
<xsl:apply-templates select="ExitType" mode="StudentExitTypeType" />
<xsl:apply-templates select="StudentLEARelationship" mode="StudentLEARelationship2Type" />
<xsl:apply-templates select="StudentSchoolRelationship" mode="StudentSchoolRelationshipType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceReimbursementAgencyRateListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Rate" mode="FoodserviceReimbursementAgencyRateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MealStatusListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BackgroundCheckType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValuePercentageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Minimum" mode="copy" />
<xsl:apply-templates select="Maximum" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistorySectionInfoDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MediumOfInstruction" mode="CourseHistoryMediumOfInstructionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PurchasingItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemNumber" mode="copy" />
<xsl:apply-templates select="ItemDescription" mode="copy" />
<xsl:apply-templates select="Quantity" mode="copy" />
<xsl:apply-templates select="UnitCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="ExpenseAccounts" mode="ExpenseAccountListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PasswordListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Password" mode="PasswordType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="Intervention2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InterventionName" mode="copy" />
<xsl:apply-templates select="InterventionDescription" mode="copy" />
<xsl:apply-templates select="InterventionType" mode="copy" />
<xsl:apply-templates select="InterventionDelivery" mode="Intervention2InterventionDeliveryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurriculumStructuresRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CurriculumStructureRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAccommodationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentProgramAccommodation" mode="StudentProgramAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ServiceProviderTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MediaTypeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MediaType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DocumentSourceType">
<xsl:apply-templates select="." mode="URIOrBinaryType" />
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentPerformanceHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="AssessmentPerformanceHistoryType" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="AdministrationDate" mode="PartialDateType" />
<xsl:apply-templates select="Form" mode="copy" />
<xsl:apply-templates select="Level" mode="copy" />
<xsl:apply-templates select="StudentGradeLevelWhenAssessed" mode="GradeLevelType" />
<xsl:apply-templates select="SubtestCategory" mode="copy" />
<xsl:apply-templates select="TestScoreType" mode="copy" />
<xsl:apply-templates select="TestScore" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsMeasurementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Measurement" mode="ItemCharacteristicsMeasurementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentScoreSetScoreListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Score" mode="StudentScoreSetScoreType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="JobClassificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryTransactionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemInfo" mode="LibraryItemInfoType" />
<xsl:apply-templates select="CheckoutInfo" mode="CheckoutInfoType" />
<xsl:apply-templates select="FineInfoList" mode="FineInfoListType" />
<xsl:apply-templates select="HoldInfoList" mode="HoldInfoListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="Duration" mode="DurationType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="FinishDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeJobFunctionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssignmentTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="Duration" mode="DurationType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
<xsl:apply-templates select="DueTime" mode="copy" />
<xsl:apply-templates select="AdministrationDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MilkSaleQuantityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SaleQuantity" mode="MilkSaleQuantityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryMarkingPeriodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MarkingPeriod" mode="CourseHistoryMarkingPeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryCourseListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Course" mode="CourseHistoryCourseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TermMarkListsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MarkInfoList" mode="MarkInfoListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TransferPointListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TransferPoint" mode="TransferPointType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Contact" mode="LearningResourceContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="Advisor" mode="StaffPersonalDataSummaryType" />
<xsl:apply-templates select="Counselor" mode="StaffPersonalDataSummaryType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ValidMarkType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="NumericEquivalent" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DebitCreditMonetaryAmountType">
<xsl:apply-templates select="." mode="MonetaryAmountType" />
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCreditEarnedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceComponentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Component" mode="LearningResourceComponentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueLetterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ValidMark" mode="ValidMarkType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAttendanceHistoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolAttended" mode="SchoolAttendanceHistoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ServiceSettingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FSAmountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Amount" mode="FSAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicFocusListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AcademicFocus" mode="AcademicFocusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoMediumSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SchoolName" mode="SchoolNameType" />
<xsl:apply-templates select="SchoolURL" mode="SchoolURLType" />
<xsl:apply-templates select="SchoolContactList" mode="SchoolContactListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Sent" mode="copy" />
<xsl:apply-templates select="Text" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValuePercentageCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Minimum" mode="copy" />
<xsl:apply-templates select="Maximum" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurrentCourseActivityTermInfoDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="PartialDateType" />
<xsl:apply-templates select="EndDate" mode="PartialDateType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="TermCode" mode="copy" />
<xsl:apply-templates select="Track" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="TermSpanType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MarkInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalDataDemographicDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RaceList" mode="RaceListType" />
<xsl:apply-templates select="Gender" mode="copy" />
<xsl:apply-templates select="BirthDate" mode="BirthDateType" />
<xsl:apply-templates select="EnglishProficiency" mode="EnglishProficiencyType" />
<xsl:apply-templates select="LanguageList" mode="LanguageListType" />
<xsl:apply-templates select="HispanicLatino" mode="DemographicsDataHispanicLatinoType" />
<xsl:apply-templates select="CountryOfBirth" mode="CountryType" />
<xsl:apply-templates select="DwellingArrangement" mode="DwellingArrangementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DurationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkingSystemsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MarkValueInfoData" mode="MarkValueInfo2Type" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AnnualItem" mode="AnnualItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponsableSchoolListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResponsableSchool" mode="ResponsableSchoolType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponsableLEAListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResponsableLEA" mode="ResponsableLEAType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponsableSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Id" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponsableLEAType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
<xsl:apply-templates select="Id" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentScoreSetScoreType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScoreValue" mode="copy" />
<xsl:apply-templates select="DiagnosticStatement" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="NumberOfResponses" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportSubmitterInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="SubmitterName" mode="copy" />
<xsl:apply-templates select="SubmitterDepartment" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
<xsl:apply-templates select="SubmitterNotes" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffPersonalDataSummary2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TargetListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Target" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoMiniSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SchoolName" mode="SchoolNameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScoreRangeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Minimum" mode="copy" />
<xsl:apply-templates select="Maximum" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResultListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Result" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueNarrativeCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MaximumSize" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicPerformanceHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermPerformance" mode="TermPerformanceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicPerformanceSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TotalCreditsAttempted" mode="copy" />
<xsl:apply-templates select="TotalCreditsEarned" mode="copy" />
<xsl:apply-templates select="CumulativeGPACreditsEarned" mode="copy" />
<xsl:apply-templates select="CumulativeGradePoints" mode="copy" />
<xsl:apply-templates select="CumulativeGPA" mode="copy" />
<xsl:apply-templates select="GPAType" mode="copy" />
<xsl:apply-templates select="ClassRank" mode="copy" />
<xsl:apply-templates select="ClassTotalNumber" mode="copy" />
<xsl:apply-templates select="ClassRankingDate" mode="PartialDateType" />
<xsl:apply-templates select="ProjectedGraduationDate" mode="PartialDateType" />
<xsl:apply-templates select="GraduationDate" mode="PartialDateType" />
<xsl:apply-templates select="GraduationDiplomaType" mode="copy" />
<xsl:apply-templates select="GraduationRateSurveyCohortYear" mode="SchoolYearType" />
<xsl:apply-templates select="GraduationRateSurveyIndicator" mode="copy" />
<xsl:apply-templates select="AcademicTrack" mode="AcademicPerformanceSummaryAcademicTrackType" />
<xsl:apply-templates select="AcademicFoci" mode="AcademicFocusListType" />
<xsl:apply-templates select="AcademicSubjects" mode="AcademicSubjectListType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSectionMarkType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Percentage" mode="copy" />
<xsl:apply-templates select="Numeric" mode="copy" />
<xsl:apply-templates select="Letter" mode="copy" />
<xsl:apply-templates select="Narrative" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApprovalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Organization" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueNarrativeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MaximumSize" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsDifferentialItemAnalysisType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CMH" mode="copy" />
<xsl:apply-templates select="MH" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MealPriceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Value" mode="MonetaryAmountType" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
<xsl:apply-templates select="MealType" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeglectedOrDelinquentParticipationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NeglectedOrDelinquentParticipation" mode="NeglectedOrDelinquentParticipationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Precision" mode="copy" />
<xsl:apply-templates select="Scale" mode="copy" />
<xsl:apply-templates select="Low" mode="copy" />
<xsl:apply-templates select="High" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CheckoutInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReturnBy" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyZoneTagType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentRecordsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentDemographicRecordRefId" mode="copy" />
<xsl:apply-templates select="StudentAcademicRecordRefId" mode="copy" />
<xsl:apply-templates select="StudentSpecialEducationRecordRefId" mode="copy" />
<xsl:apply-templates select="OtherRecords" mode="OtherStudentRecordListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BudgetAccountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BudgetAccount" mode="BudgetAccountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExclusionRuleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExclusionRule" mode="ExclusionRuleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MenuPlanQuantityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MenuPlanQuantity" mode="MenuPlanQuantityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssociatedRoleRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusPositionStudentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Student" mode="BusPositionStudentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InterventionProviderNameListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InterventionProviderName" mode="InterventionProviderNameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PrerequisiteListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Prerequisite" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolRelationshipResidencyStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCertificationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Certification" mode="EmployeeCertificationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CutScoresType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LowerCut" mode="copy" />
<xsl:apply-templates select="UpperCut" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SourceObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportFormatListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportFormat" mode="ReportFormatType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FrequencyTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueLetterCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ValidMark" mode="ValidMarkCleanType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialAssignmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="JobFunction" mode="EmployeeJobFunctionType" />
<xsl:apply-templates select="FTE" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceEvaluationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Evaluation" mode="LearningResourceEvaluationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramType" mode="ProgramTypeType" />
<xsl:apply-templates select="LEAInfoData" mode="LEAInfoSummaryCleanType" />
<xsl:apply-templates select="SchoolInfoData" mode="SchoolInfoMediumSummaryType" />
<xsl:apply-templates select="ReferralDate" mode="PartialDateType" />
<xsl:apply-templates select="ProgramStatus" mode="ProgramStatusType" />
<xsl:apply-templates select="EvaluationDate" mode="PartialDateType" />
<xsl:apply-templates select="ReevaluationDate" mode="PartialDateType" />
<xsl:apply-templates select="ExceptionalityCategories" mode="ExceptionalityCategoryListType" />
<xsl:apply-templates select="ProgramPlanDate" mode="PartialDateType" />
<xsl:apply-templates select="ProgramPlanEffectiveDate" mode="PartialDateType" />
<xsl:apply-templates select="PlannedAssessmentParticipation" mode="SourcedCodesetType" />
<xsl:apply-templates select="StudentSpecialEducationFTE" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkingPeriodTermInfoDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="PartialDateType" />
<xsl:apply-templates select="EndDate" mode="PartialDateType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="TermCode" mode="copy" />
<xsl:apply-templates select="Track" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="TermSpanType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentContactsSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentGuardian1" mode="StudentContactSummaryType" />
<xsl:apply-templates select="ParentGuardian2" mode="StudentContactSummaryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageDataSourceReadingDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Measurement" mode="copy" />
<xsl:apply-templates select="SensorId" mode="copy" />
<xsl:apply-templates select="Interval" mode="copy" />
<xsl:apply-templates select="EnergyUnits" mode="ReadingDataEnergyUnitsType" />
<xsl:apply-templates select="ReadingName" mode="copy" />
<xsl:apply-templates select="ReadingList" mode="EnergyUsageDataReadingListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurriculumStructureCurriculumHierarchyLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="JobFunctionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceComponentStrategyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Strategy" mode="LearningResourceComponentStrategyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CalculationRuleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExclusionRuleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ServiceFundingSourceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramFundingSource" mode="ProgramFundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicSubjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyZoneTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Facility" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramAvailabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FineInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FineInfo" mode="FineInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceSalesAmountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SalesAmount" mode="FoodserviceSalesAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceReimbursementAgencyRateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAccommodationAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="AccommodationCategory" mode="AccommodationCategoryType" />
<xsl:apply-templates select="SpecialMaterials" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FinancialIncomeStatementMonetaryAmountType">
<xsl:apply-templates select="." mode="MonetaryAmountType" />
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
<xsl:apply-templates select="Email" mode="EmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurriculumHierarchyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CurriculumHierarchy" mode="CurriculumHierarchyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceComponentStrategyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelatedLearningStandardItemRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MenuPlanQuantityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuditInfoCreationUserType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UserId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FSCountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Count" mode="FSCountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponseToInterventionMeasurementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Measurement" mode="ResponseToInterventionMeasurementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceReimbursementAgencyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Agency" mode="FoodserviceReimbursementAgencyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Statement" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeAssignmentProgramType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PartCTransitionMeetingNotHeldReasonListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PartCTransitionMeetingNotHeldReason" mode="PartCTransitionMeetingNotHeldReasonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryStudentPlacementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPlacementData" mode="StudentSpecialEducationSummaryStudentPlacementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContentObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SourceObject" mode="copy" />
<xsl:apply-templates select="Location" mode="LearningResourceLocationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResponseToInterventionMeasurementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MeasurementTool" mode="copy" />
<xsl:apply-templates select="FrequencyofMeasure" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageDataSourceReadingDataListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReadingData" mode="EnergyUsageDataSourceReadingDataType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryMarkingPeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolAttendedRefId" mode="copy" />
<xsl:apply-templates select="TermInfoData" mode="MarkingPeriodTermInfoDataType" />
<xsl:apply-templates select="GradeLevelWhenTaken" mode="GradeLevelType" />
<xsl:apply-templates select="MarkData" mode="MarkingPeriodMarkDataType" />
<xsl:apply-templates select="CourseCreditsAttempted" mode="copy" />
<xsl:apply-templates select="CourseCreditsEarned" mode="copy" />
<xsl:apply-templates select="CreditType" mode="copy" />
<xsl:apply-templates select="ExcessiveAbsenceIndicator" mode="copy" />
<xsl:apply-templates select="DaysAbsent" mode="copy" />
<xsl:apply-templates select="DaysPresent" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TitleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PerformanceLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CutScores" mode="CutScoresType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageDataReadingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityAwardHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="InvolvementCode" mode="copy" />
<xsl:apply-templates select="InvolvementBeginningDate" mode="PartialDateType" />
<xsl:apply-templates select="InvolvementEndingDate" mode="PartialDateType" />
<xsl:apply-templates select="InvolvementAmount" mode="copy" />
<xsl:apply-templates select="HonorsInformationCode" mode="ActivityAwardHonorsInformationCodeType" />
<xsl:apply-templates select="HonorsDescription" mode="copy" />
<xsl:apply-templates select="DiplomaCredentialHonorsCode" mode="ActivityAwardDiplomaCredentialHonorsCodeType" />
<xsl:apply-templates select="DiplomaCredentialHonorsDescription" mode="copy" />
<xsl:apply-templates select="CredentialConferred" mode="ActivityAwardCredentialConferredType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramFundingSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountType" mode="copy" />
<xsl:apply-templates select="AccountTypeDetail" mode="AnnualItemAccountTypeDetailType" />
<xsl:apply-templates select="FundType" mode="AnnualItemFundTypeType" />
<xsl:apply-templates select="FundClassificationCode" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="ExpenditureArea" mode="AnnualItemExpenditureAreaType" />
<xsl:apply-templates select="Function" mode="copy" />
<xsl:apply-templates select="Object" mode="copy" />
<xsl:apply-templates select="InstructionalProgram" mode="copy" />
<xsl:apply-templates select="Amount" mode="copy" />
<xsl:apply-templates select="InstructionalLevel" mode="copy" />
<xsl:apply-templates select="OperationalUnit" mode="copy" />
<xsl:apply-templates select="ProjectCode" mode="copy" />
<xsl:apply-templates select="Source" mode="copy" />
<xsl:apply-templates select="ChartOfAccountCode" mode="copy" />
<xsl:apply-templates select="SubjectMatter" mode="copy" />
<xsl:apply-templates select="JobClassification" mode="copy" />
<xsl:apply-templates select="SpecialAmountType" mode="AnnualItemSpecialAmountTypeType" />
<xsl:apply-templates select="GLAmountType" mode="AnnualItemGLAmountTypeType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodservicePurchaseQuantityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MealType" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FederalTaxIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AdditionalGraduationRequirementPerformanceHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Method" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="StatusDeterminationDate" mode="PartialDateType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityAwardHistoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ActivityAward" mode="ActivityAwardHistoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurrentCourseActivityCourseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolAttendedRefId" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoData" mode="SchoolCourseInfoSummaryType" />
<xsl:apply-templates select="StartDate" mode="PartialDateType" />
<xsl:apply-templates select="EndDate" mode="PartialDateType" />
<xsl:apply-templates select="MarkingPeriod" mode="MarkingPeriodSummaryType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardHierarchyLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActionListSpecialConditionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeePersonalOtherIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="OtherIdListType" />
<xsl:apply-templates select="OtherId" mode="EmployeePersonalOtherIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodservicePayMethodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TransactionPayMethod" mode="FoodservicePayMethodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SchoolName" mode="SchoolNameType" />
<xsl:apply-templates select="SchoolURL" mode="SchoolURLType" />
<xsl:apply-templates select="SchoolContactList" mode="SchoolContactListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="IdentificationInfoList" mode="IdentificationInfoListType" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryStudentParticipationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentParticipationData" mode="StudentSpecialEducationSummaryStudentParticipationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurrentCourseActivityCourseListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Course" mode="CurrentCourseActivityCourseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssociatedObjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AssociatedObject" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WhenServiceProvidedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsChoiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
<xsl:apply-templates select="ChoiceLabel" mode="copy" />
<xsl:apply-templates select="Responses" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LessonSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Author" mode="LessonSourceAuthorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialConditionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InterventionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Intervention" mode="Intervention2Type" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeglectedOrDelinquentParticipationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="TotalDayCount" mode="copy" />
<xsl:apply-templates select="ConsecutiveDayCount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentExitTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SourceObjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SourceObject" mode="SourceObjectType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentContactSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurriculumHierarchyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Level" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ParentLevel" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ValidMarkCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="NumericEquivalent" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryStudentParticipationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramType" mode="ProgramTypeType" />
<xsl:apply-templates select="ProgramFundingSources" mode="StudentPlacementProgramFundingSourceListType" />
<xsl:apply-templates select="ManagingPublicAgency" mode="copy" />
<xsl:apply-templates select="ManagingSchool" mode="StudentParticipationDataManagingSchoolType" />
<xsl:apply-templates select="ReferralDate" mode="copy" />
<xsl:apply-templates select="ProgramStatus" mode="ProgramStatusType" />
<xsl:apply-templates select="GiftedEligibilityCriteria" mode="copy" />
<xsl:apply-templates select="EvaluationDate" mode="copy" />
<xsl:apply-templates select="ReevaluationDate" mode="copy" />
<xsl:apply-templates select="ExceptionalityCategories" mode="ExceptionalityCategoryListType" />
<xsl:apply-templates select="ProgramPlanDate" mode="copy" />
<xsl:apply-templates select="ProgramPlanEffectiveDate" mode="copy" />
<xsl:apply-templates select="PlannedAssessmentParticipation" mode="SourcedCodesetType" />
<xsl:apply-templates select="DaysInParticipation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReferralSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningObjectiveListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningObjective" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentResponseSetItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Response" mode="copy" />
<xsl:apply-templates select="ResponseLocation" mode="copy" />
<xsl:apply-templates select="ResponseStatus" mode="copy" />
<xsl:apply-templates select="ResponseTime" mode="copy" />
<xsl:apply-templates select="ItemNumber" mode="copy" />
<xsl:apply-templates select="ItemName" mode="copy" />
<xsl:apply-templates select="DiagnosticStatement" mode="copy" />
<xsl:apply-templates select="NumberOfAttempts" mode="copy" />
<xsl:apply-templates select="ItemScore" mode="copy" />
<xsl:apply-templates select="ItemAidSetUsed" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardIdentifierType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="YearCreated" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="StandardNumber" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="Benchmark" mode="copy" />
<xsl:apply-templates select="GradeLevel" mode="GradeLevelType" />
<xsl:apply-templates select="IndicatorNumber" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCodes" mode="AlternateIdentificationCodeListType" />
<xsl:apply-templates select="Organization" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MealPriceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Price" mode="MealPriceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OrganizationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Organization" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentPerformanceHistoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Assessment" mode="AssessmentPerformanceHistoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AccommodationCategoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentLEARelationship2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="LEARelationshipType" mode="OrganizationRelationshipType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CourseCode" mode="CourseCodeType" />
<xsl:apply-templates select="StateCourseCode" mode="StateCourseCodeType" />
<xsl:apply-templates select="DistrictCourseCode" mode="DistrictCourseCodeType" />
<xsl:apply-templates select="NationalCourseCode" mode="copy" />
<xsl:apply-templates select="SubjectAreaList" mode="SubjectAreaListType" />
<xsl:apply-templates select="CourseTitle" mode="CourseTitleType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="InstructionalLevel" mode="InstructionalLevelType" />
<xsl:apply-templates select="CoreAcademicCourse" mode="copy" />
<xsl:apply-templates select="GraduationRequirement" mode="copy" />
<xsl:apply-templates select="Department" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAttendanceHistoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAInfoData" mode="LEAInfoSummaryType" />
<xsl:apply-templates select="SchoolInfoData" mode="SchoolInfoSummaryType" />
<xsl:apply-templates select="AccreditingBody" mode="copy" />
<xsl:apply-templates select="MarkingSystems" mode="MarkingSystemsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BaselineListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Baseline" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryTransactionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Transaction" mode="LibraryTransactionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DebitCreditMonetaryAmountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Amount" mode="DebitCreditMonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentEntryTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityEvaluationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueInfo2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Percentage" mode="MarkValuePercentageCleanType" />
<xsl:apply-templates select="Numeric" mode="MarkValueNumberCleanType" />
<xsl:apply-templates select="Letter" mode="MarkValueLetterCleanType" />
<xsl:apply-templates select="Narrative" mode="MarkValueNarrativeCleanType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SessionDurationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MilkSaleQuantityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="MealStatus" mode="MealStatusType" />
<xsl:apply-templates select="SaleUnit" mode="copy" />
<xsl:apply-templates select="ChargeToChild" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AggregateCharacteristicInfoRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AggregateCharacteristicInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalDataOtherIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryItemInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
<xsl:apply-templates select="ElectronicId" mode="ElectronicIdType" />
<xsl:apply-templates select="CallNumber" mode="copy" />
<xsl:apply-templates select="Price" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TelemetryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Telemetry" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuthenticationInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="System" mode="AuthenticationInfoSystemType" />
<xsl:apply-templates select="Username" mode="copy" />
<xsl:apply-templates select="DistinguishedName" mode="copy" />
<xsl:apply-templates select="PasswordList" mode="PasswordListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusStaffType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportFormatType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAInfoSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="LEAName" mode="LEANameType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramPlanTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolRelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="ResidencyStatus" mode="StudentSchoolRelationshipResidencyStatusType" />
<xsl:apply-templates select="NonResidentAttendReason" mode="StudentSchoolRelationshipNonResidentAttendReasonType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningResourceRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentExitStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HoldInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="HoldInfo" mode="HoldInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportingPeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BeginReportDate" mode="copy" />
<xsl:apply-templates select="EndReportDate" mode="copy" />
<xsl:apply-templates select="BeginSubmitDate" mode="copy" />
<xsl:apply-templates select="EndSubmitDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OldFundingSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DestinationPointType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ArrivalTime" mode="copy" />
<xsl:apply-templates select="RouteNumber" mode="copy" />
<xsl:apply-templates select="RouteDescription" mode="copy" />
<xsl:apply-templates select="VehicleNumber" mode="copy" />
<xsl:apply-templates select="BusStopDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodservicePayMethodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Amounts" mode="FSAmountListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExpenseAccountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountCode" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceItemQuantityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="MealType" mode="copy" />
<xsl:apply-templates select="GradeLevels" mode="GradeLevelsType" />
<xsl:apply-templates select="Cost" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryMessageListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Message" mode="LibraryMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceTransactionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TransactionType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementServiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardDocumentRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardDocumentRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicSubjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AcademicSubject" mode="AcademicSubjectType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BudgetAccountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountClass" mode="copy" />
<xsl:apply-templates select="FundBreakdown" mode="copy" />
<xsl:apply-templates select="FunctionBreakdown" mode="copy" />
<xsl:apply-templates select="ObjectBreakdown" mode="copy" />
<xsl:apply-templates select="BudgetAmount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramAvailabilityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramAvailability" mode="ProgramAvailabilityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AggregateStatisticInfoLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocationName" mode="copy" />
<xsl:apply-templates select="LocationRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentResponseSetItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Item" mode="StudentResponseSetItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MinSecDurationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OriginPointType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ArrivalTime" mode="copy" />
<xsl:apply-templates select="RouteNumber" mode="copy" />
<xsl:apply-templates select="RouteDescription" mode="copy" />
<xsl:apply-templates select="VehicleNumber" mode="copy" />
<xsl:apply-templates select="BusStopDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialConditionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentSpecialCondition" mode="StudentSpecialConditionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TargetObjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TargetObject" mode="TargetObjectType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementProgramFundingSourceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramFundingSource" mode="StudentPlacementServiceFundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EssentialMaterialListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EssentialMaterial" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PasswordType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageDataReadingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Reading" mode="EnergyUsageDataReadingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceItemQuantityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemQuantity" mode="FoodserviceItemQuantityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyUsageLocationInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolId" mode="URIOrBinaryType" />
<xsl:apply-templates select="Building" mode="copy" />
<xsl:apply-templates select="EnergyZone" mode="EnergyZoneType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="SSN" mode="SSNType" />
<xsl:apply-templates select="OtherIdList" mode="StudentPersonalDataOtherIdListType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="DemographicsData" mode="StudentPersonalDataDemographicDataType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="IDEA" mode="copy" />
<xsl:apply-templates select="Migrant" mode="StudentPersonalMigrantType" />
<xsl:apply-templates select="Title1" mode="StudentPersonalTitle1Type" />
<xsl:apply-templates select="GiftedTalented" mode="StudentPersonalGiftedTalentedType" />
<xsl:apply-templates select="EconomicDisadvantage" mode="StudentPersonalEconomicDisadvantageType" />
<xsl:apply-templates select="ELL" mode="StudentPersonalELLType" />
<xsl:apply-templates select="Homeless" mode="StudentPersonalHomelessType" />
<xsl:apply-templates select="Section504" mode="StudentPersonalSection504Type" />
<xsl:apply-templates select="VocationalConcentrator" mode="StudentPersonalVocationalConcentratorType" />
<xsl:apply-templates select="Immigrant" mode="StudentPersonalImmigrantType" />
<xsl:apply-templates select="NeglectedDelinquent" mode="StudentPersonalNeglectedDelinquentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffPersonalDataSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalData" mode="StaffPersonalDataSummary2Type" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InterventionProviderNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherProvider" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PerformanceIndicatorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PerformanceIndicator" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentFormNumberListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FormNumber" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TypedCreator2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DistanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentAttendanceAuditInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationUser" mode="AuditInfoCreationUserType" />
<xsl:apply-templates select="CreationDateTime" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PartCTransitionMeetingOutcomeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PartCTransitionMeetingOutcome" mode="PartCTransitionMeetingOutcomeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TypedCreatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardsSettingBodyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Country" mode="CountryType" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="SettingBodyName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCertificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="AreaAuthorized" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LessonSourceAuthorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="Organization" mode="copy" />
<xsl:apply-templates select="Address" mode="OldAddressType" />
<xsl:apply-templates select="Email" mode="EmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSectionMarkListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Mark" mode="StudentSectionMarkType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramExitReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InterventionFrequencyTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="Duration" mode="MinSecDurationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FoodserviceSalesAmountType">
<xsl:apply-templates select="." mode="MonetaryAmountType" />
</xsl:template>
<xsl:template match="node()|@*" mode="LEAInfoSummaryCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NCESId" mode="NCESIdType" />
<xsl:apply-templates select="LEAName" mode="LEANameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TransferPointType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EmbarkBusRouteDetail" mode="copy" />
<xsl:apply-templates select="DisembarkBusRouteDetail" mode="TransferPointDisembarkBusRouteDetailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApprovalListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Approval" mode="ApprovalType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LessonStrategyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Strategy" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LessonSourceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LessonSource" mode="LessonSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentParticipationRefId" mode="copy" />
<xsl:apply-templates select="StudentProgramType" mode="StudentProgramTypeType" />
<xsl:apply-templates select="Accommodations" mode="StudentProgramAccommodationAccommodationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TermPerformanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermInfoData" mode="AcademicPerfomanceHistoryTermInfoDataType" />
<xsl:apply-templates select="GradeLevelWhenTaken" mode="GradeLevelType" />
<xsl:apply-templates select="CreditsAttempted" mode="copy" />
<xsl:apply-templates select="CreditsEarned" mode="copy" />
<xsl:apply-templates select="GPACreditsAttempted" mode="copy" />
<xsl:apply-templates select="GPACreditsEarned" mode="copy" />
<xsl:apply-templates select="GPAGradePoints" mode="copy" />
<xsl:apply-templates select="GPA" mode="copy" />
<xsl:apply-templates select="WeightedGPA" mode="copy" />
<xsl:apply-templates select="DaysAbsent" mode="copy" />
<xsl:apply-templates select="DaysPresent" mode="copy" />
<xsl:apply-templates select="ProgressLevel" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicPerfomanceHistoryTermInfoDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="PartialDateType" />
<xsl:apply-templates select="EndDate" mode="PartialDateType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="TermCode" mode="copy" />
<xsl:apply-templates select="Track" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="TermSpanType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PersonIdType">
<xsl:apply-templates select="." mode="StateProvinceIdType" />
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsMeasurementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MeasurementDescription" mode="copy" />
<xsl:apply-templates select="ScaleValue" mode="copy" />
<xsl:apply-templates select="Min" mode="copy" />
<xsl:apply-templates select="Max" mode="copy" />
<xsl:apply-templates select="Optimal" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialAssignmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Assignment" mode="EmployeeCredentialAssignmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnergyZoneType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="EnergyZoneTypeType" />
<xsl:apply-templates select="EnergyZoneName" mode="copy" />
<xsl:apply-templates select="TagList" mode="EnergyZoneTagListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherLEAListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ItemCharacteristicsDescriptiveType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PValue" mode="copy" />
<xsl:apply-templates select="SampleSize" mode="copy" />
<xsl:apply-templates select="PointBiserial" mode="copy" />
<xsl:apply-templates select="Biserial" mode="copy" />
<xsl:apply-templates select="DiscriminationIndex" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CurrentCourseActivityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TermInfoData" mode="CurrentCourseActivityTermInfoDataType" />
<xsl:apply-templates select="Courses" mode="CurrentCourseActivityCourseListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PayRateListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PayRate" mode="PayRateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SourcedCodesetType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentItemChoiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ChoiceLabel" mode="copy" />
<xsl:apply-templates select="ChoiceContent" mode="AbstractContentElementType" />
<xsl:apply-templates select="CreditValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuthenticationInfoSystemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkValueNumberCleanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Precision" mode="copy" />
<xsl:apply-templates select="Scale" mode="copy" />
<xsl:apply-templates select="Low" mode="copy" />
<xsl:apply-templates select="High" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CopyrightType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Holder" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAccommodationAccommodationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Accommodation" mode="StudentProgramAccommodationAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PartCTransitionMeetingOutcomeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BusRouteStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BusRouteInfoRefId" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourceLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FineInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Assessed" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="Reference" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PayRateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="Percentage" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CourseHistoryMediumOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExpenseAccountListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExpenseAccount" mode="ExpenseAccountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentLEARelationshipNonResidentAttendReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialHispanicType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialLeaveType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialEducationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialTeachingCredentialTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialHighlyQualifiedTeacherIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialParaprofessionalQualificationStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmployeeCredentialTerminationCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationManagingSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationPerkinsLEPStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationTitleIIIAccountabilityProgressStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationTitleIIIImmigrantParticipationStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationNeglectedOrDelinquentAchievementIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationNeglectedOrDelinquentAcademicOutcomeIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementServicingSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementSchoolWhereServiceDeliveredType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TestAccommodationAuthorizedActualType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryEnvironmentForSchoolAgeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSpecialEducationSummaryEnvironmentForEarlyChildhoodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentCareerTechnicalParticipantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentCareerTechnicalNontraditionalGenderStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentCareerTechnicalDisplacedHomemakerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentCareerTechnicalSingleParentOrSinglePregnantWomanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardDocumentDocumentStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContentCatalogInstructionalLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressSubregionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressStateProvinceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressCountryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAssociationYearGroupType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAssociationExitStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAssociationExitTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentProgramAssociationPlacementTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineIncidentIncidentLocationRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceCodeInfoAttendanceStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceCodeInfoUsedForDailyAttendanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceCodeInfoUsedForPeriodAttendanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoGraduationRequirementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoDualCreditType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoCTEConcentratorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoSchoolTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoSessionTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoTitle1StatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoTitleIProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoSchoolImprovementStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoStatePovertyDesignationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoNationalSchoolLunchProgramStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoSharedTimeIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolInfoVirtualSchoolStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SectionInfoCountForAttendanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalIDEAType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalMigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalTitle1Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalGiftedTalentedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalEconomicDisadvantageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalELLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalHomelessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalHomelessServicedIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalSection504Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalVocationalConcentratorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalImmigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPersonalNeglectedDelinquentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentAdvisorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentCounselorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentCalendarType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentFTPTStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolEnrollmentNonResidentAttendReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSectionEnrollmentCTEConcentratorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TermInfoSchedulingTermType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TermInfoAttendanceTermType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotGenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotGraduationAwardType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotGraduationOnTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotIDEAType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotMigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotTitle1Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotGiftedTalentedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotEconomicDisadvantageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotELLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotHomelessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotSection504Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotVocationalConcentratorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotImmigrantType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotNeglectedDelinquentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSnapshotFreeAndReducedStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAInfoTitleIProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAInfoTitleIIILanguageInstructionProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffAssignmentItinerantTeacherType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentContactPersonalOptOutEmailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilityHighSchoolGraduationRateIndicatorStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilityPersistentlyDangerousStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilityProficiencyTargetStatusForMathType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilityProficiencyTargetStatusForReadingAndLanguageArtsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilitySchoolOperationalStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilityReconstitutedStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolAccountabilitySchoolImprovementFundsStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolFederalFundSchoolImprovementGrantInterventionTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMigrantPrioritizedForServicesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMigrantContinuationOfServicesReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMigrantContinuationOfServicesStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMigrantEnrollmentTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMigrantParticipationStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentTransportInfoSchoolBusRouteDetailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentTransportInfoStateAidQualificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentTransportInfoTransportationStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentTransportInfoPublicExpenseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="UserOrganizationAssociationPersonRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsGenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsBirthDateVerificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsCitizenshipStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationCommonReasonNotCompletingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationCommonReasonNotTestedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCharterManagementOrganizationTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SCEDCodeCourseLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageContainerLanguageTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BellPeriodUseInAttendanceCalculationsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HomeEnrollmentFullYearEnrollmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionZeroToleranceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionFullYearExpulsionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionShortenedExpulsionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionPoliceNotificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionArrestType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DisciplineActionAlternativeEducationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ManifestationDeterminationDueToDisabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentActionPoliceNotificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IncidentActionArrestType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsPickupRightsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsLivesWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsAccessToRecordsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsEmergencyContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsHasCustodyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsDisciplinaryContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsPrimaryCareProviderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsOtherType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementDataServicingSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentPlacementDataSchoolWhereServiceDeliveredType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentStudentSnapshotGenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentStudentSnapshotTitle1Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssessmentStudentSnapshotELLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="Intervention2InterventionDeliveryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsDataHispanicLatinoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AcademicPerformanceSummaryAcademicTrackType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReadingDataEnergyUnitsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityAwardHonorsInformationCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityAwardDiplomaCredentialHonorsCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityAwardCredentialConferredType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemAccountTypeDetailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemFundTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemExpenditureAreaType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemSpecialAmountTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AnnualItemGLAmountTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentParticipationDataManagingSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSchoolRelationshipNonResidentAttendReasonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TransferPointDisembarkBusRouteDetailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfilePrimaryIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfilePrimaryLearningDeviceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfilePrimaryLearningDeviceAccessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfilePrimaryLearningDeviceProviderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileInternetAccessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileInternetAccessBarrierType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileInternetAccessTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileInternetPerformanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocationName" mode="copy" />
<xsl:apply-templates select="PrimaryIndicator" mode="RemoteLearningLocationProfilePrimaryIndicatorType" />
<xsl:apply-templates select="PrimaryLearningDevice" mode="RemoteLearningLocationProfilePrimaryLearningDeviceType" />
<xsl:apply-templates select="PrimaryLearningDeviceAccess" mode="RemoteLearningLocationProfilePrimaryLearningDeviceAccessType" />
<xsl:apply-templates select="PrimaryLearningDeviceProvider" mode="RemoteLearningLocationProfilePrimaryLearningDeviceProviderType" />
<xsl:apply-templates select="InternetAccess" mode="RemoteLearningLocationProfileInternetAccessType" />
<xsl:apply-templates select="InternetAccessBarrier" mode="RemoteLearningLocationProfileInternetAccessBarrierType" />
<xsl:apply-templates select="InternetAccessType" mode="RemoteLearningLocationProfileInternetAccessTypeType" />
<xsl:apply-templates select="InternetPerformance" mode="RemoteLearningLocationProfileInternetPerformanceType" />
<xsl:apply-templates select="AddressRefId" mode="RefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RemoteLearningLocationProfileListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RemoteLearningLocationProfile" mode="RemoteLearningLocationProfileType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InstructionalDeliveryModeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="InstructionalDeliveryModeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InstructionalDeliveryMode" mode="InstructionalDeliveryModeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="instructionalDeliveryModeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SettingLocationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SettingLocation" mode="SettingLocationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SettingLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SettingLocationName" mode="copy" />
<xsl:apply-templates select="SettingLocationType" mode="copy" />
<xsl:apply-templates select="SettingLocationRefId" mode="copy" />
<xsl:apply-templates select="SettingLocationObjectTypeName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ConsentToSharingOfDataContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomainObligationList" mode="DataDomainObligationListType" />
<xsl:apply-templates select="NeverShareWithList" mode="NeverShareWithListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DataDomainObligationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomainObligation" mode="DataDomainObligationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DataDomainObligationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomain" mode="copy" />
<xsl:apply-templates select="DomainComments" mode="copy" />
<xsl:apply-templates select="ShareWithList" mode="ShareWithListType" />
<xsl:apply-templates select="DoNotShareWithList" mode="DoNotShareWithListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ShareWith" mode="ShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ShareWithParty" mode="copy" />
<xsl:apply-templates select="ShareWithRefId" mode="copy" />
<xsl:apply-templates select="ShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="ShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="ShareWithName" mode="copy" />
<xsl:apply-templates select="ShareWithRelationship" mode="copy" />
<xsl:apply-templates select="ShareWithPurpose" mode="copy" />
<xsl:apply-templates select="ShareWithRole" mode="copy" />
<xsl:apply-templates select="ShareWithComments" mode="copy" />
<xsl:apply-templates select="PermissionToOnShare" mode="copy" />
<xsl:apply-templates select="ShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DoNotShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DoNotShareWith" mode="DoNotShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DoNotShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DoNotShareWithParty" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRefId" mode="copy" />
<xsl:apply-templates select="DoNotShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="DoNotShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DoNotShareWithName" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRelationship" mode="copy" />
<xsl:apply-templates select="DoNotShareWithPurpose" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRole" mode="copy" />
<xsl:apply-templates select="DoNotShareWithComments" mode="copy" />
<xsl:apply-templates select="DoNotShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApplicableLawListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ApplicableLaw" mode="ApplicableLawType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApplicableLawType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ApplicableCountry" mode="copy" />
<xsl:apply-templates select="ApplicableLawName" mode="copy" />
<xsl:apply-templates select="ApplicableLawURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PermissionToParticipateListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PermissionToParticipate" mode="PermissionToParticipateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PermissionToParticipateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PermissionCategory" mode="copy" />
<xsl:apply-templates select="Permission" mode="copy" />
<xsl:apply-templates select="PermissionValue" mode="copy" />
<xsl:apply-templates select="PermissionStartDate" mode="copy" />
<xsl:apply-templates select="PermissionEndDate" mode="copy" />
<xsl:apply-templates select="PermissionGranteeRefId" mode="copy" />
<xsl:apply-templates select="PermissionGranteeObjectTypeName" mode="copy" />
<xsl:apply-templates select="PermissionGranteeName" mode="copy" />
<xsl:apply-templates select="PermissionGranteeRelationship" mode="copy" />
<xsl:apply-templates select="PermissionComments" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeverShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NeverShareWith" mode="NeverShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeverShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NeverShareWithParty" mode="copy" />
<xsl:apply-templates select="NeverShareWithRefId" mode="copy" />
<xsl:apply-templates select="NeverShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="NeverShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="NeverShareWithName" mode="copy" />
<xsl:apply-templates select="NeverShareWithRelationship" mode="copy" />
<xsl:apply-templates select="NeverShareWithPurpose" mode="copy" />
<xsl:apply-templates select="NeverShareWithRole" mode="copy" />
<xsl:apply-templates select="NeverShareWithComments" mode="copy" />
<xsl:apply-templates select="NeverShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GenericYesNoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanCommonAuthorizationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="authorizingOfficialsList" mode="authorizingOfficialsListType" />
<xsl:apply-templates select="parentGuardianAuthorization" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationType" />
<xsl:apply-templates select="transferOfRightsNotificationDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="criterion" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementCriterionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="identifier" mode="copy" />
<xsl:apply-templates select="facilitatorList" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListType" />
<xsl:apply-templates select="measurement" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementType" />
<xsl:apply-templates select="parentAcceptance" mode="iepPlanAnnualGoalListParentAcceptanceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilityDecisionsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="specificDisabilityIdentified" mode="copy" />
<xsl:apply-templates select="adverseEffectIdentified" mode="copy" />
<xsl:apply-templates select="eligible" mode="iepEligibleType" />
<xsl:apply-templates select="identity" mode="iepCommonAuthorizingPersonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xEnrollmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="leaRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="schoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="studentSchoolAssociationRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="responsibleSchoolType" mode="copy" />
<xsl:apply-templates select="membershipType" mode="copy" />
<xsl:apply-templates select="entryDate" mode="copy" />
<xsl:apply-templates select="exitDate" mode="copy" />
<xsl:apply-templates select="exitOrWithdrawalType" mode="copy" />
<xsl:apply-templates select="homeRoomNumber" mode="copy" />
<xsl:apply-templates select="homeRoomTeacher" mode="xPersonReferenceType" />
<xsl:apply-templates select="gradeLevel" mode="copy" />
<xsl:apply-templates select="projectedGraduationYear" mode="copy" />
<xsl:apply-templates select="counselor" mode="xPersonReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepStandardPurposeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalListParentAcceptanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accepted" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationNeedsListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="need" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xRaceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="race" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalDisabilityListDisabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="disabilityCodeList" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="consequences" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepCommonAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="fundingSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FundingSource" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAmendmentListAmendmentChangeListChangeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="reasonForChange" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xDemographicsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="races" mode="xRaceListType" />
<xsl:apply-templates select="hispanicLatinoEthnicity" mode="copy" />
<xsl:apply-templates select="sex" mode="copy" />
<xsl:apply-templates select="birthDate" mode="copy" />
<xsl:apply-templates select="countryOfBirth" mode="copy" />
<xsl:apply-templates select="usCitizenshipStatus" mode="gCitizenshipStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTransmitPermissionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="transmitPermission" mode="iepTransmitPermissionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityBackgroundReferralType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="referrer" mode="iepEligibilityBackgroundReferralReferrerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationRejectedPlanElementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="rejectedDetailList" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationRejectedPlanElementsRejectedDetailListType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xPersonIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xTelephoneListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="phoneNumber" mode="xTelephoneType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepRoleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityParticipantReportListParticipantReportType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="authorization" mode="iepCommonAuthorizingPersonType" />
<xsl:apply-templates select="role" mode="iepRoleType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="procedures" mode="copy" />
<xsl:apply-templates select="observations" mode="copy" />
<xsl:apply-templates select="conclusions" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataNamesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="categoryName" mode="copy" />
<xsl:apply-templates select="valueName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonExternalPartyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contactRefId" mode="iepCommonContactRefIdPointerType" />
<xsl:apply-templates select="organizationRefId" mode="iepCommonOrganizationRefIdPointerType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalSummaryAccommodationListAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAccommodationsListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepPlanAccommodationsListAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCitizenshipStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalIntentionDesiredOutcomeListDesiredOutcomeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="title" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="timeframe" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationPersonalGoalsListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="personalGoal" mode="iepPlanPresentLevelPerformancePersonalEvaluationPersonalGoalsListPersonalGoalType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xStaffPersonAssignmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="leaRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="schoolRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="jobFunction" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherCourseIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="otherId" mode="xOtherCourseIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xContactStudentRelationshipListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="relationship" mode="xContactStudentRelationshipType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicDeficitListDeficitType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="academicSubject" mode="academicSubjectSimpleType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="consequences" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepCommonAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAmendmentListAmendmentChangeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="change" mode="iepPlanAmendmentListAmendmentChangeListChangeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xSessionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="session" mode="xSessionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTransmitPermissionJustificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="authorizingParent" mode="iepCommonAuthorizingPersonType" />
<xsl:apply-templates select="otherJustification" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="accommodationList" mode="iepPlanPresentLevelPerformanceFunctionalSummaryAccommodationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEnvironmentForEarlyChildhoodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepReferenceObjectOrganizationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referenceOrganization" mode="xOrganizationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalIntentionDesiredOutcomeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="desiredOutcome" mode="iepPlanPresentLevelPerformancePersonalIntentionDesiredOutcomeListDesiredOutcomeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="authorizingOfficialsListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="authorizingOfficial" mode="iepCommonAuthorizingPersonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAmendmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="amendment" mode="iepPlanAmendmentListAmendmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepExtendsSchoolYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xEmailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="emailType" mode="copy" />
<xsl:apply-templates select="emailAddress" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonServiceProviderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contactRefId" mode="iepCommonContactRefIdPointerType" />
<xsl:apply-templates select="organizationRefId" mode="iepCommonOrganizationRefIdPointerType" />
<xsl:apply-templates select="staffRefId" mode="iepCommonStaffRefIdPointerType" />
<xsl:apply-templates select="role" mode="iepRoleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepLifecyclePurposeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xStaffPersonAssignmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="staffPersonAssignment" mode="xStaffPersonAssignmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="concerns" mode="iepPlanPresentLevelPerformancePersonalConcernsType" />
<xsl:apply-templates select="strengthsDescription" mode="copy" />
<xsl:apply-templates select="motivation" mode="copy" />
<xsl:apply-templates select="evaluation" mode="iepPlanPresentLevelPerformancePersonalEvaluationType" />
<xsl:apply-templates select="intention" mode="iepPlanPresentLevelPerformancePersonalIntentionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deficitList" mode="iepPlanPresentLevelPerformanceAcademicDeficitListType" />
<xsl:apply-templates select="summary" mode="iepPlanPresentLevelPerformanceAcademicSummaryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="personal" mode="iepPlanPresentLevelPerformancePersonalType" />
<xsl:apply-templates select="academic" mode="iepPlanPresentLevelPerformanceAcademicType" />
<xsl:apply-templates select="functional" mode="iepPlanPresentLevelPerformanceFunctionalType" />
<xsl:apply-templates select="consequenceOfDisability" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilitySpecialCategoryListSpecialCategoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="programType" mode="iepProgramTypeType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalCoursesListCourseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="timing" mode="copy" />
<xsl:apply-templates select="courseContentDescription" mode="copy" />
<xsl:apply-templates select="courseUri" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataValuesListDataValueType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationPerformanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="generalEducationDescription" mode="copy" />
<xsl:apply-templates select="testResultList" mode="iepPlanPresentLevelPerformancePersonalEvaluationPerformanceTestResultListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xSubjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEnvironmentForSchoolAgeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataValuesListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dataValue" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataValuesListDataValueType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="accommodationList" mode="iepPlanPresentLevelPerformanceAcademicSummaryAccommodationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalCoursesListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="course" mode="iepPlanAnnualGoalCoursesListCourseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gFractionDecimalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityEvaluationResultType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="procedureDescription" mode="copy" />
<xsl:apply-templates select="type" mode="iepTypeType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="date" mode="copy" />
<xsl:apply-templates select="identity" mode="iepCommonServiceProviderType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xMeetingTimeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="meetingTime" mode="xMeetingTimeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xLanguageCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xTelephoneTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListFacilitatorIdentityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contactRefId" mode="iepCommonContactRefIdPointerType" />
<xsl:apply-templates select="staffRefId" mode="iepCommonStaffRefIdPointerType" />
<xsl:apply-templates select="parentGuardianRefId" mode="iepCommonStudentContactRefIdPointerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultStandardsReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="assessmentTitle" mode="copy" />
<xsl:apply-templates select="subject" mode="iepSubjectType" />
<xsl:apply-templates select="url" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonStaffRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="facilitator" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListFacilitatorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonAuthorizingPersonType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="identity" mode="copy" />
<xsl:apply-templates select="qualification" mode="copy" />
<xsl:apply-templates select="date" mode="copy" />
<xsl:apply-templates select="contactRefId" mode="iepCommonContactRefIdPointerType" />
<xsl:apply-templates select="staffRefId" mode="iepCommonStaffRefIdPointerType" />
<xsl:apply-templates select="parentGuardianRefId" mode="iepCommonStudentContactRefIdPointerType" />
<xsl:apply-templates select="studentRefId" mode="iepCommonStudentRefIdPointerType" />
<xsl:apply-templates select="intrinsicRole" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherPersonAddressListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="xPersonAddressType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanEnrollmentGradeLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="standardGradeLevel" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityBackgroundReferralReferrerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="identity" mode="iepCommonAuthorizingPersonType" />
<xsl:apply-templates select="date" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherPersonIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="id" mode="xPersonIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gStreetType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Line1" mode="copy" />
<xsl:apply-templates select="Line2" mode="copy" />
<xsl:apply-templates select="Line3" mode="copy" />
<xsl:apply-templates select="Complex" mode="copy" />
<xsl:apply-templates select="StreetNumber" mode="copy" />
<xsl:apply-templates select="StreetPrefix" mode="copy" />
<xsl:apply-templates select="StreetName" mode="copy" />
<xsl:apply-templates select="StreetType" mode="copy" />
<xsl:apply-templates select="StreetSuffix" mode="copy" />
<xsl:apply-templates select="ApartmentType" mode="copy" />
<xsl:apply-templates select="ApartmentNumberPrefix" mode="copy" />
<xsl:apply-templates select="ApartmentNumber" mode="copy" />
<xsl:apply-templates select="ApartmentNumberSuffix" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xAcademicSummaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="cumulativeWeightedGpa" mode="copy" />
<xsl:apply-templates select="termWeightedGpa" mode="copy" />
<xsl:apply-templates select="classRank" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xPersonNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="prefix" mode="copy" />
<xsl:apply-templates select="familyName" mode="copy" />
<xsl:apply-templates select="givenName" mode="copy" />
<xsl:apply-templates select="middleName" mode="copy" />
<xsl:apply-templates select="suffix" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xStudentContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contactPersonRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="xContact" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementScheduleModificationSchoolDayType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="specificModification" mode="copy" />
<xsl:apply-templates select="rationale" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementScheduleModificationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="schoolDay" mode="iepPlanPlacementScheduleModificationSchoolDayType" />
<xsl:apply-templates select="schoolYear" mode="iepPlanPlacementScheduleModificationSchoolYearType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="environmentForSchoolAge" mode="iepEnvironmentForSchoolAgeType" />
<xsl:apply-templates select="environmentForEarlyChildhood" mode="iepEnvironmentForEarlyChildhoodType" />
<xsl:apply-templates select="placementRationale" mode="copy" />
<xsl:apply-templates select="scheduleModification" mode="iepPlanPlacementScheduleModificationType" />
<xsl:apply-templates select="transportation" mode="iepPlanPlacementTransportationType" />
<xsl:apply-templates select="leastRestrictiveEnvironment" mode="iepPlanPlacementLeastRestrictiveEnvironmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xCourseIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityBackgroundConsentToEvaluateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accepted" mode="copy" />
<xsl:apply-templates select="identity" mode="iepCommonAuthorizingPersonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepAdministrativeDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="studentRefId" mode="iepCommonStudentRefIdPointerType" />
<xsl:apply-templates select="reevaluationDueDate" mode="copy" />
<xsl:apply-templates select="costSharing" mode="iepAdministrativeDataCostSharingType" />
<xsl:apply-templates select="transferPermissionList" mode="iepTransmitPermissionListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalServicesListServiceFrequencyDurationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="directMinutes" mode="copy" />
<xsl:apply-templates select="indirectMinutes" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityBackgroundType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referral" mode="iepEligibilityBackgroundReferralType" />
<xsl:apply-templates select="history" mode="copy" />
<xsl:apply-templates select="currentPlacement" mode="copy" />
<xsl:apply-templates select="parentObservations" mode="copy" />
<xsl:apply-templates select="consentToEvaluation" mode="iepEligibilityBackgroundConsentToEvaluateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="accuracyPercentEvaluationSimpleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="curriculum" mode="copy" />
<xsl:apply-templates select="specialCategoryList" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilitySpecialCategoryListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOrganizationIdentificationSystemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementTransportationInsideSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilitySpecialCategoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="specialCategory" mode="iepPlanPresentLevelPerformanceConsequenceOfDisabilitySpecialCategoryListSpecialCategoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalServicesListServiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="iepTypeType" />
<xsl:apply-templates select="inclusiveSettingIndicator" mode="iepInclusiveSettingIndicatorType" />
<xsl:apply-templates select="serviceProvider" mode="iepCommonServiceProviderType" />
<xsl:apply-templates select="frequency" mode="iepPlanAnnualGoalServicesListServiceFrequencyType" />
<xsl:apply-templates select="startDate" mode="copy" />
<xsl:apply-templates select="endDate" mode="copy" />
<xsl:apply-templates select="nonParticipationReason" mode="copy" />
<xsl:apply-templates select="extendsSchoolYear" mode="iepExtendsSchoolYearType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicDeficitListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deficit" mode="iepPlanPresentLevelPerformanceAcademicDeficitListDeficitType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalGoalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="additionalInformation" mode="copy" />
<xsl:apply-templates select="standardsReference" mode="iepPlanAnnualGoalGoalStandardsReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepCommonAccommodationType" />
<xsl:apply-templates select="location" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="achievementStandard" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListAccommodationAchievementStandardType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementCriterionMetricType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accuracyPercentEvaluation" mode="accuracyPercentEvaluationSimpleType" />
<xsl:apply-templates select="trialCountEvaluation" mode="iepPlanAnnualGoalMeasurableObjectiveMeasurementCriterionMetricTrialCountEvaluationType" />
<xsl:apply-templates select="otherEvaluation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xStudentReferenceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="studentReference" mode="xPersonReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalDisabilityListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="disability" mode="iepPlanPresentLevelPerformanceFunctionalDisabilityListDisabilityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonStudentRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="iepPeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xLanguageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="code" mode="xLanguageCodeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherOrganizationIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="xOrganizationIdentificationSystemType" />
<xsl:apply-templates select="id" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xRaceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="race" mode="xRaceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicSummaryAccommodationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepPlanPresentLevelPerformanceAcademicSummaryAccommodationListAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepReferenceObjectStaffListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referenceStaffPerson" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepHistoryListItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="lea" mode="iepCommonLeaRefIdPointerType" />
<xsl:apply-templates select="iepDates" mode="tiepHistoryItemIepDatesType" />
<xsl:apply-templates select="contactInfoRefId" mode="iepCommonContactRefIdPointerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalServicesListServiceFrequencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="cycle" mode="iepPlanAnnualGoalServicesListServiceFrequencyCycleType" />
<xsl:apply-templates select="duration" mode="iepPlanAnnualGoalServicesListServiceFrequencyDurationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsSpecificLearningDisabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="primaryCauseExclusions" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsPrimaryCauseExclusionsType" />
<xsl:apply-templates select="lackOfAdequateAchievementExplanation" mode="copy" />
<xsl:apply-templates select="learningSettingObservations" mode="copy" />
<xsl:apply-templates select="decisions" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilityDecisionsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementLeastRestrictiveEnvironmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="totalMinutesPerWeek" mode="copy" />
<xsl:apply-templates select="inclusionMinutesPerWeek" mode="copy" />
<xsl:apply-templates select="nonInclusionMinutesPerWeek" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xEnrollmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="enrollment" mode="xEnrollmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepInclusiveSettingIndicatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="dataNames" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataNamesType" />
<xsl:apply-templates select="dataValuesList" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementDataValuesListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListProgressReportType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="measurement" mode="iepPlanAnnualGoalProgressReportListProgressReportMeasurementType" />
<xsl:apply-templates select="status" mode="iepStatusType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="date" mode="copy" />
<xsl:apply-templates select="identity" mode="iepCommonAuthorizingPersonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsprimaryCauseExclusionsDeterminantFactorsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="insufficientMath" mode="copy" />
<xsl:apply-templates select="insufficientReading" mode="copy" />
<xsl:apply-templates select="insufficientEnglish" mode="copy" />
<xsl:apply-templates select="visualHearingOrMotorDisability" mode="copy" />
<xsl:apply-templates select="intellectualDisability" mode="copy" />
<xsl:apply-templates select="emotionalDisability" mode="copy" />
<xsl:apply-templates select="culturalFactors" mode="copy" />
<xsl:apply-templates select="environmentalOrEconomicDisadvantage" mode="copy" />
<xsl:apply-templates select="limitedEnglishProficiency" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xDayListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="bellScheduleDay" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceAcademicSummaryAccommodationListAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonContactRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="measurableObjective" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationRejectedPlanElementsRejectedDetailListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalIndependentActionsListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="independentAction" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalProgressReportListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="progressReport" mode="iepPlanAnnualGoalProgressReportListProgressReportType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="currentStatus" mode="copy" />
<xsl:apply-templates select="goalType" mode="iepPlanAnnualGoalGoalType" />
<xsl:apply-templates select="measurableObjectiveList" mode="iepPlanAnnualGoalMeasurableObjectiveListType" />
<xsl:apply-templates select="independentActionsList" mode="iepPlanAnnualGoalIndependentActionsListType" />
<xsl:apply-templates select="servicesList" mode="iepPlanAnnualGoalServicesListType" />
<xsl:apply-templates select="coursesList" mode="iepPlanAnnualGoalCoursesListType" />
<xsl:apply-templates select="progressReportList" mode="iepPlanAnnualGoalProgressReportListType" />
<xsl:apply-templates select="parentAcceptance" mode="iepPlanAnnualGoalListParentAcceptanceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementCriterionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="metric" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveMeasurementCriterionMetricType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xTelephoneType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="phoneNumberType" mode="xTelephoneTypeType" />
<xsl:apply-templates select="number" mode="copy" />
<xsl:apply-templates select="primaryIndicator" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gFullTimeStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accepted" mode="iepAcceptedType" />
<xsl:apply-templates select="rejectedPlanElements" mode="iepPlanCommonAuthorizationParentGuardianAuthorizationRejectedPlanElementsType" />
<xsl:apply-templates select="authorizingParentGuardian" mode="iepCommonAuthorizingPersonType" />
<xsl:apply-templates select="authorizationDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepAdministrativeDataCostSharingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="status" mode="copy" />
<xsl:apply-templates select="agency" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepReferenceObjectContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referenceContactPerson" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="disabilityList" mode="iepPlanPresentLevelPerformanceFunctionalDisabilityListType" />
<xsl:apply-templates select="summary" mode="iepPlanPresentLevelPerformanceFunctionalSummaryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilityAnalysisType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="adverseEffects" mode="copy" />
<xsl:apply-templates select="educationNeeds" mode="copy" />
<xsl:apply-templates select="accommodation" mode="copy" />
<xsl:apply-templates select="otherInformation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAccommodationsListAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepCommonAccommodationType" />
<xsl:apply-templates select="applicabilityList" mode="iepPlanAccommodationsListAccommodationApplicabiltyListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="annualGoal" mode="iepPlanAnnualGoalType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonLeaRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="xStaffReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="staffPersonReference" mode="xPersonReferenceType" />
<xsl:apply-templates select="teacherOfRecord" mode="copy" />
<xsl:apply-templates select="percentResponsible" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xSchoolYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherPersonNameListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="xPersonNameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOrganizationIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonAccommodationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="rationale" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonStudentContactRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="xOrganizationAddressType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="addressType" mode="copy" />
<xsl:apply-templates select="line1" mode="copy" />
<xsl:apply-templates select="line2" mode="copy" />
<xsl:apply-templates select="city" mode="copy" />
<xsl:apply-templates select="stateProvince" mode="copy" />
<xsl:apply-templates select="countryCode" mode="copy" />
<xsl:apply-templates select="postalCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="specificLearningDisability" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsSpecificLearningDisabilityType" />
<xsl:apply-templates select="TeamOverride" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationPersonalGoalsListPersonalGoalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="successCriteria" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepReferenceObjectLeaListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="referenceLea" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherPersonIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="otherId" mode="xOtherPersonIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="needsList" mode="iepPlanPresentLevelPerformancePersonalEvaluationNeedsListType" />
<xsl:apply-templates select="performance" mode="iepPlanPresentLevelPerformancePersonalEvaluationPerformanceType" />
<xsl:apply-templates select="personalGoalsList" mode="iepPlanPresentLevelPerformancePersonalEvaluationPersonalGoalsListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gLocalIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IdType" mode="copy" />
<xsl:apply-templates select="IdValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalEvaluationPerformanceTestResultListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="diagnosticStatement" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="disabilityCodeList" mode="copy" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="analysis" mode="iepEligibilityIdeaDisabilityAnalysisType" />
<xsl:apply-templates select="SpecialDiagnosisJustifications" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsType" />
<xsl:apply-templates select="decisions" mode="iepEligibilityIdeaDisabilityDecisionsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepAcceptedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepProgramTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AddressRefId" mode="gRefIdPointerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherCourseIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="id" mode="xCourseIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="effectivePeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="start" mode="copy" />
<xsl:apply-templates select="end" mode="copy" />
<xsl:apply-templates select="evaluationDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="standardizedAssessmentResult" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="effectivePeriod" mode="effectivePeriodType" />
<xsl:apply-templates select="enrollmentGradeLevel" mode="iepPlanEnrollmentGradeLevelType" />
<xsl:apply-templates select="presentLevelPerformance" mode="iepPlanPresentLevelPerformanceType" />
<xsl:apply-templates select="annualGoalsList" mode="iepPlanAnnualGoalListType" />
<xsl:apply-templates select="accommodationsList" mode="iepPlanAccommodationsListType" />
<xsl:apply-templates select="standardizedAssessmentResultList" mode="iepPlanStandardizedAssessmentResultListType" />
<xsl:apply-templates select="placement" mode="iepPlanPlacementType" />
<xsl:apply-templates select="authorization" mode="iepPlanCommonAuthorizationType" />
<xsl:apply-templates select="amendmentList" mode="iepPlanAmendmentListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xPersonAddressType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="addressType" mode="copy" />
<xsl:apply-templates select="line1" mode="copy" />
<xsl:apply-templates select="line2" mode="copy" />
<xsl:apply-templates select="city" mode="copy" />
<xsl:apply-templates select="stateProvince" mode="copy" />
<xsl:apply-templates select="countryCode" mode="copy" />
<xsl:apply-templates select="postalCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTransmitPermissionDestinationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="lea" mode="iepCommonLeaRefIdPointerType" />
<xsl:apply-templates select="serviceProvider" mode="iepCommonServiceProviderType" />
<xsl:apply-templates select="other" mode="iepCommonExternalPartyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTransmitPermissionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="authorizingOfficial" mode="iepCommonAuthorizingPersonType" />
<xsl:apply-templates select="authorizationDate" mode="copy" />
<xsl:apply-templates select="justification" mode="iepTransmitPermissionJustificationType" />
<xsl:apply-templates select="destination" mode="iepTransmitPermissionDestinationType" />
<xsl:apply-templates select="purpose" mode="iepTransmitPermissionPurposeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformanceFunctionalSummaryAccommodationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="accommodation" mode="iepPlanPresentLevelPerformanceFunctionalSummaryAccommodationListAccommodationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalIntentionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="overview" mode="copy" />
<xsl:apply-templates select="desiredOutcomeList" mode="iepPlanPresentLevelPerformancePersonalIntentionDesiredOutcomeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepHistoryItemIepDatesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="start" mode="copy" />
<xsl:apply-templates select="end" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementScheduleModificationSchoolYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="specificModification" mode="copy" />
<xsl:apply-templates select="rationale" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepCategoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityParticipantReportListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="participantReport" mode="iepEligibilityParticipantReportListParticipantReportType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityEvaluationResultListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="evaluationResult" mode="iepEligibilityEvaluationResultType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="background" mode="iepEligibilityBackgroundType" />
<xsl:apply-templates select="evaluationResultList" mode="iepEligibilityEvaluationResultListType" />
<xsl:apply-templates select="ideaDisability" mode="iepEligibilityIdeaDisabilityType" />
<xsl:apply-templates select="eligibilityParticipantReportList" mode="iepEligibilityParticipantReportListType" />
<xsl:apply-templates select="lifecyclePurpose" mode="iepLifecyclePurposeType" />
<xsl:apply-templates select="determination" mode="copy" />
<xsl:apply-templates select="identity" mode="iepCommonAuthorizingPersonType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="xYearGroupListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="gradeLevel" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalServicesListServiceFrequencyCycleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="count" mode="copy" />
<xsl:apply-templates select="period" mode="iepPeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xApplicableEducationLevelListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="applicableEducationLevel" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepSubjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xSessionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="sessionType" mode="copy" />
<xsl:apply-templates select="sessionCode" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="markingTerm" mode="copy" />
<xsl:apply-templates select="schedulingTerm" mode="copy" />
<xsl:apply-templates select="linkedSessionCode" mode="copy" />
<xsl:apply-templates select="startDate" mode="copy" />
<xsl:apply-templates select="endDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalServicesListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="service" mode="iepPlanAnnualGoalServicesListServiceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xLoginIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xIepType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="iepAdministrativeData" mode="iepAdministrativeDataType" />
<xsl:apply-templates select="iepEligibility" mode="iepEligibilityType" />
<xsl:apply-templates select="iepPlan" mode="iepPlanType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepTransmitPermissionPurposeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="standardPurpose" mode="iepStandardPurposeType" />
<xsl:apply-templates select="otherPurpose" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListAccommodationAchievementStandardType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="iepTypeType" />
<xsl:apply-templates select="name" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveMeasurementCriterionMetricTrialCountEvaluationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="successCount" mode="copy" />
<xsl:apply-templates select="attemptCount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPresentLevelPerformancePersonalConcernsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="reason" mode="copy" />
<xsl:apply-templates select="parentConcernDescription" mode="copy" />
<xsl:apply-templates select="studentConcernDescription" mode="copy" />
<xsl:apply-templates select="background" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAccommodationsListAccommodationApplicabiltyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="applicability" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOtherOrganizationIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="otherId" mode="xOtherOrganizationIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsPrimaryCauseExclusionsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="determinantFactors" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilitySpecialDiagnosisJustificationsprimaryCauseExclusionsDeterminantFactorsType" />
<xsl:apply-templates select="medicalExplanation" mode="copy" />
<xsl:apply-templates select="otherFactorsExplanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xOrganizationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="address" mode="xOrganizationAddressType" />
<xsl:apply-templates select="phone" mode="xTelephoneType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gRefIdType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="iepCommonOrganizationRefIdPointerType">
<xsl:apply-templates select="." mode="gUUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="tiepReferenceObjectsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="student" mode="copy" />
<xsl:apply-templates select="leaList" mode="tiepReferenceObjectLeaListType" />
<xsl:apply-templates select="contactList" mode="tiepReferenceObjectContactListType" />
<xsl:apply-templates select="staffList" mode="tiepReferenceObjectStaffListType" />
<xsl:apply-templates select="organizationList" mode="tiepReferenceObjectOrganizationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepEligibilityIdeaDisabilitySpecificLearningDisabilityDecisionsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="severeDiscrepancyFound" mode="copy" />
<xsl:apply-templates select="InsufficientResponseToInterventionFound" mode="copy" />
<xsl:apply-templates select="eligibleForSpecificLearningDisabilityFinding" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementTransportationOutsideSchoolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="category" mode="iepCategoryType" />
<xsl:apply-templates select="explanation" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanPlacementTransportationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="outsideSchool" mode="iepPlanPlacementTransportationOutsideSchoolType" />
<xsl:apply-templates select="insideSchool" mode="iepPlanPlacementTransportationInsideSchoolType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAmendmentListAmendmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="changeList" mode="iepPlanAmendmentListAmendmentChangeListType" />
<xsl:apply-templates select="explanation" mode="copy" />
<xsl:apply-templates select="authorization" mode="iepPlanCommonAuthorizationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xEmailListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="email" mode="xEmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="standardsReference" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultStandardsReferenceType" />
<xsl:apply-templates select="accommodationList" mode="iepPlanStandardizedAssessmentResultListStandardizedAssessmentResultAccommodationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xContactStudentRelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="studentRefId" mode="gRefIdPointerType" />
<xsl:apply-templates select="relationshipCode" mode="copy" />
<xsl:apply-templates select="restrictions" mode="copy" />
<xsl:apply-templates select="livesWith" mode="copy" />
<xsl:apply-templates select="primaryContactIndicator" mode="copy" />
<xsl:apply-templates select="emergencyContactIndicator" mode="copy" />
<xsl:apply-templates select="financialResponsibilityIndicator" mode="copy" />
<xsl:apply-templates select="custodialIndicator" mode="copy" />
<xsl:apply-templates select="communicationsIndicator" mode="copy" />
<xsl:apply-templates select="contactSequence" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="academicSubjectSimpleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalGoalStandardsReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="url" mode="copy" />
<xsl:apply-templates select="identifier" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListFacilitatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="identity" mode="iepPlanAnnualGoalMeasurableObjectiveListMeasurableObjectiveFacilitatorListFacilitatorIdentityType" />
<xsl:apply-templates select="contribution" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xPersonReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="refId" mode="gRefIdPointerType" />
<xsl:apply-templates select="localId" mode="xPersonIdType" />
<xsl:apply-templates select="givenName" mode="copy" />
<xsl:apply-templates select="familyName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xStaffReferenceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="otherStaff" mode="xStaffReferenceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xMeetingTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="timeTableDay" mode="copy" />
<xsl:apply-templates select="classMeetingDays" mode="xDayListType" />
<xsl:apply-templates select="timeTablePeriod" mode="copy" />
<xsl:apply-templates select="roomNumber" mode="copy" />
<xsl:apply-templates select="classBeginningTime" mode="copy" />
<xsl:apply-templates select="classEndingTime" mode="copy" />
<xsl:apply-templates select="sessionCode" mode="copy" />
<xsl:apply-templates select="instructionalDeliveryMode" mode="instructionalDeliveryModeType" />
<xsl:apply-templates select="schoolCalendarRefId" mode="gRefIdPointerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gUUIDType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xLanguageListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="xLanguageType" />
<xsl:apply-templates select="language" mode="xLanguageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="tiepHistoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="tiepHistoryListItemType" />
<xsl:apply-templates select="historyItem" mode="tiepHistoryListItemType" />
</xsl:copy>
</xsl:template>
</xsl:stylesheet>
