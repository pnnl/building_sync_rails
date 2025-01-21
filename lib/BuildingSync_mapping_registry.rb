# encoding: UTF-8
require 'xsd/mapping'
require 'BuildingSync.rb'

module BuildingSyncMappingRegistry
  NsC_2019 = "http://buildingsync.net/schemas/bedes-auc/2019"
  NsSchema = "http://www.gbxml.org/schema"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"
  Registry = ::SOAP::Mapping::LiteralRegistry.new

  Registry.register(
    :class => BuildingSync::SiteType,
    :schema_type => XSD::QName.new(NsC_2019, "SiteType"),
    :schema_element => [
      ["premisesIdentifiers", ["BuildingSync::PremisesIdentifiers", XSD::QName.new(NsC_2019, "PremisesIdentifiers")], [0, 1]],
      ["premisesName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesName")], [0, 1]],
      ["premisesNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesNotes")], [0, 1]],
      ["occupancyClassification", ["BuildingSync::OccupancyClassificationType", XSD::QName.new(NsC_2019, "OccupancyClassification")], [0, 1]],
      ["address", ["BuildingSync::Address", XSD::QName.new(NsC_2019, "Address")], [0, 1]],
      ["climateZoneType", ["BuildingSync::ClimateZoneType", XSD::QName.new(NsC_2019, "ClimateZoneType")], [0, 1]],
      [ :choice,
        ["eGRIDRegionCode", "SOAP::SOAPString", [0, 1]],
        ["eGRIDSubregionCodes", "BuildingSync::EGRIDSubregionCodes", [0, 1]]
      ],
      [ :choice,
        [
          ["weatherDataStationID", ["BuildingSync::WeatherDataStationID", XSD::QName.new(NsC_2019, "WeatherDataStationID")], [0, 1]],
          ["weatherStationName", ["BuildingSync::WeatherStationName", XSD::QName.new(NsC_2019, "WeatherStationName")], [0, 1]],
          ["weatherStationCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherStationCategory")], [0, 1]]
        ],
        ["weatherStations", ["BuildingSync::WeatherStations", XSD::QName.new(NsC_2019, "WeatherStations")], [0, 1]]
      ],
      ["longitude", ["BuildingSync::Longitude", XSD::QName.new(NsC_2019, "Longitude")], [0, 1]],
      ["latitude", ["BuildingSync::Latitude", XSD::QName.new(NsC_2019, "Latitude")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Ownership")], [0, 1]],
      ["ownershipStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OwnershipStatus")], [0, 1]],
      ["primaryContactID", ["BuildingSync::PrimaryContactID", XSD::QName.new(NsC_2019, "PrimaryContactID")], [0, 1]],
      ["buildings", ["BuildingSync::SiteType::Buildings", XSD::QName.new(NsC_2019, "Buildings")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::SiteType::Buildings,
    :schema_name => XSD::QName.new(NsC_2019, "Buildings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["building", ["BuildingSync::BuildingType[]", XSD::QName.new(NsC_2019, "Building")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType,
    :schema_type => XSD::QName.new(NsC_2019, "BuildingType"),
    :schema_element => [
      ["premisesName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesName")], [0, 1]],
      ["premisesNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesNotes")], [0, 1]],
      ["premisesIdentifiers", ["BuildingSync::PremisesIdentifiers", XSD::QName.new(NsC_2019, "PremisesIdentifiers")], [0, 1]],
      ["address", ["BuildingSync::Address", XSD::QName.new(NsC_2019, "Address")], [0, 1]],
      ["climateZoneType", ["BuildingSync::ClimateZoneType", XSD::QName.new(NsC_2019, "ClimateZoneType")], [0, 1]],
      [ :choice,
        ["eGRIDRegionCode", "SOAP::SOAPString", [0, 1]],
        ["eGRIDSubregionCodes", "BuildingSync::EGRIDSubregionCodes", [0, 1]]
      ],
      [ :choice,
        [
          ["weatherDataStationID", ["BuildingSync::WeatherDataStationID", XSD::QName.new(NsC_2019, "WeatherDataStationID")], [0, 1]],
          ["weatherStationName", ["BuildingSync::WeatherStationName", XSD::QName.new(NsC_2019, "WeatherStationName")], [0, 1]],
          ["weatherStationCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherStationCategory")], [0, 1]]
        ],
        ["weatherStations", ["BuildingSync::WeatherStations", XSD::QName.new(NsC_2019, "WeatherStations")], [0, 1]]
      ],
      ["longitude", ["BuildingSync::Longitude", XSD::QName.new(NsC_2019, "Longitude")], [0, 1]],
      ["latitude", ["BuildingSync::Latitude", XSD::QName.new(NsC_2019, "Latitude")], [0, 1]],
      ["buildingClassification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BuildingClassification")], [0, 1]],
      ["occupancyClassification", ["BuildingSync::OccupancyClassificationType", XSD::QName.new(NsC_2019, "OccupancyClassification")], [0, 1]],
      ["occupancyLevels", ["BuildingSync::OccupancyLevels", XSD::QName.new(NsC_2019, "OccupancyLevels")], [0, 1]],
      ["typicalOccupantUsages", ["BuildingSync::TypicalOccupantUsages", XSD::QName.new(NsC_2019, "TypicalOccupantUsages")], [0, 1]],
      ["spatialUnits", ["BuildingSync::SpatialUnits", XSD::QName.new(NsC_2019, "SpatialUnits")], [0, 1]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Ownership")], [0, 1]],
      ["ownershipStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OwnershipStatus")], [0, 1]],
      ["primaryContactID", ["BuildingSync::PrimaryContactID", XSD::QName.new(NsC_2019, "PrimaryContactID")], [0, 1]],
      ["tenantIDs", ["BuildingSync::TenantIDs[]", XSD::QName.new(NsC_2019, "TenantIDs")], [0, nil]],
      ["multiTenant", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "MultiTenant")], [0, 1]],
      ["nAICSCode", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "NAICSCode")], [0, 1]],
      ["publiclySubsidized", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "PubliclySubsidized")], [0, 1]],
      ["federalBuilding", ["BuildingSync::BuildingType::FederalBuilding", XSD::QName.new(NsC_2019, "FederalBuilding")], [0, 1]],
      ["portfolioManager", ["BuildingSync::PortfolioManagerType", XSD::QName.new(NsC_2019, "PortfolioManager")], [0, 1]],
      ["numberOfBusinesses", ["BuildingSync::BuildingType::NumberOfBusinesses", XSD::QName.new(NsC_2019, "NumberOfBusinesses")], [0, 1]],
      ["floorsAboveGrade", ["BuildingSync::FloorsAboveGrade", XSD::QName.new(NsC_2019, "FloorsAboveGrade")], [0, 1]],
      ["floorsBelowGrade", ["BuildingSync::FloorsBelowGrade", XSD::QName.new(NsC_2019, "FloorsBelowGrade")], [0, 1]],
      ["conditionedFloorsAboveGrade", ["BuildingSync::BuildingType::ConditionedFloorsAboveGrade", XSD::QName.new(NsC_2019, "ConditionedFloorsAboveGrade")], [0, 1]],
      ["conditionedFloorsBelowGrade", ["BuildingSync::BuildingType::ConditionedFloorsBelowGrade", XSD::QName.new(NsC_2019, "ConditionedFloorsBelowGrade")], [0, 1]],
      ["unconditionedFloorsAboveGrade", ["BuildingSync::BuildingType::UnconditionedFloorsAboveGrade", XSD::QName.new(NsC_2019, "UnconditionedFloorsAboveGrade")], [0, 1]],
      ["unconditionedFloorsBelowGrade", ["BuildingSync::BuildingType::UnconditionedFloorsBelowGrade", XSD::QName.new(NsC_2019, "UnconditionedFloorsBelowGrade")], [0, 1]],
      ["buildingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BuildingAutomationSystem")], [0, 1]],
      ["lightingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "LightingAutomationSystem")], [0, 1]],
      ["historicalLandmark", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "HistoricalLandmark")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]],
      ["aspectRatio", ["BuildingSync::BuildingType::AspectRatio", XSD::QName.new(NsC_2019, "AspectRatio")], [0, 1]],
      ["perimeter", ["BuildingSync::BuildingType::Perimeter", XSD::QName.new(NsC_2019, "Perimeter")], [0, 1]],
      ["totalExteriorAboveGradeWallArea", ["BuildingSync::BuildingType::TotalExteriorAboveGradeWallArea", XSD::QName.new(NsC_2019, "TotalExteriorAboveGradeWallArea")], [0, 1]],
      ["totalExteriorBelowGradeWallArea", ["BuildingSync::BuildingType::TotalExteriorBelowGradeWallArea", XSD::QName.new(NsC_2019, "TotalExteriorBelowGradeWallArea")], [0, 1]],
      ["totalCommonConditionedAboveGradeWallArea", ["BuildingSync::BuildingType::TotalCommonConditionedAboveGradeWallArea", XSD::QName.new(NsC_2019, "TotalCommonConditionedAboveGradeWallArea")], [0, 1]],
      ["overallWindowToWallRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "OverallWindowToWallRatio")], [0, 1]],
      ["overallDoorToWallRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "OverallDoorToWallRatio")], [0, 1]],
      ["heightDistribution", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeightDistribution")], [0, 1]],
      ["horizontalSurroundings", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HorizontalSurroundings")], [0, 1]],
      ["verticalSurroundings", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "VerticalSurroundings")], [0, 1]],
      ["assessments", ["BuildingSync::BuildingType::Assessments", XSD::QName.new(NsC_2019, "Assessments")], [0, 1]],
      ["principalHVACSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrincipalHVACSystemType")], [0, 1]],
      ["yearOfConstruction", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfConstruction")], [0, 1]],
      ["principalLightingSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrincipalLightingSystemType")], [0, 1]],
      ["yearOccupied", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOccupied")], [0, 1]],
      ["yearOfLastEnergyAudit", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfLastEnergyAudit")], [0, 1]],
      ["retrocommissioningDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "RetrocommissioningDate")], [0, 1]],
      ["yearOfLatestRetrofit", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfLatestRetrofit")], [0, 1]],
      ["yearOfLastMajorRemodel", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfLastMajorRemodel")], [0, 1]],
      ["percentOccupiedByOwner", ["BuildingSync::BuildingType::PercentOccupiedByOwner", XSD::QName.new(NsC_2019, "PercentOccupiedByOwner")], [0, 1]],
      ["percentLeasedByOwner", ["BuildingSync::BuildingType::PercentLeasedByOwner", XSD::QName.new(NsC_2019, "PercentLeasedByOwner")], [0, 1]],
      ["numberOfFacilitiesOnSite", ["BuildingSync::BuildingType::NumberOfFacilitiesOnSite", XSD::QName.new(NsC_2019, "NumberOfFacilitiesOnSite")], [0, 1]],
      ["operatorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OperatorType")], [0, 1]],
      ["sections", ["BuildingSync::BuildingType::Sections", XSD::QName.new(NsC_2019, "Sections")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::FederalBuilding,
    :schema_name => XSD::QName.new(NsC_2019, "FederalBuilding"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["agency", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Agency")], [0, 1]],
      ["departmentRegion", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DepartmentRegion")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::NumberOfBusinesses,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfBusinesses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::ConditionedFloorsAboveGrade,
    :schema_name => XSD::QName.new(NsC_2019, "ConditionedFloorsAboveGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::ConditionedFloorsBelowGrade,
    :schema_name => XSD::QName.new(NsC_2019, "ConditionedFloorsBelowGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::UnconditionedFloorsAboveGrade,
    :schema_name => XSD::QName.new(NsC_2019, "UnconditionedFloorsAboveGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::UnconditionedFloorsBelowGrade,
    :schema_name => XSD::QName.new(NsC_2019, "UnconditionedFloorsBelowGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::AspectRatio,
    :schema_name => XSD::QName.new(NsC_2019, "AspectRatio"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Perimeter,
    :schema_name => XSD::QName.new(NsC_2019, "Perimeter"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::TotalExteriorAboveGradeWallArea,
    :schema_name => XSD::QName.new(NsC_2019, "TotalExteriorAboveGradeWallArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::TotalExteriorBelowGradeWallArea,
    :schema_name => XSD::QName.new(NsC_2019, "TotalExteriorBelowGradeWallArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::TotalCommonConditionedAboveGradeWallArea,
    :schema_name => XSD::QName.new(NsC_2019, "TotalCommonConditionedAboveGradeWallArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Assessments::Assessment,
    :schema_name => XSD::QName.new(NsC_2019, "Assessment"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["assessmentProgram", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssessmentProgram")], [0, 1]],
      ["assessmentLevel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssessmentLevel")], [0, 1]],
      ["assessmentValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AssessmentValue")], [0, 1]],
      ["assessmentYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "AssessmentYear")], [0, 1]],
      ["assessmentVersion", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssessmentVersion")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Assessments,
    :schema_name => XSD::QName.new(NsC_2019, "Assessments"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["assessment", ["BuildingSync::BuildingType::Assessments::Assessment[]", XSD::QName.new(NsC_2019, "Assessment")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::PercentOccupiedByOwner,
    :schema_name => XSD::QName.new(NsC_2019, "PercentOccupiedByOwner"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::PercentLeasedByOwner,
    :schema_name => XSD::QName.new(NsC_2019, "PercentLeasedByOwner"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::NumberOfFacilitiesOnSite,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfFacilitiesOnSite"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::NumberOfSides,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfSides"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::PerimeterZoneDepth,
    :schema_name => XSD::QName.new(NsC_2019, "PerimeterZoneDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::SideA1Orientation,
    :schema_name => XSD::QName.new(NsC_2019, "SideA1Orientation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides::Side::SideLength,
    :schema_name => XSD::QName.new(NsC_2019, "SideLength"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides::Side::WallIDs,
    :schema_name => XSD::QName.new(NsC_2019, "WallIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["wallID", ["BuildingSync::WallID[]", XSD::QName.new(NsC_2019, "WallID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides::Side::WindowIDs,
    :schema_name => XSD::QName.new(NsC_2019, "WindowIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["windowID", ["BuildingSync::WindowID[]", XSD::QName.new(NsC_2019, "WindowID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides::Side::DoorIDs,
    :schema_name => XSD::QName.new(NsC_2019, "DoorIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["doorID", ["BuildingSync::DoorID[]", XSD::QName.new(NsC_2019, "DoorID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides::Side,
    :schema_name => XSD::QName.new(NsC_2019, "Side"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["sideNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SideNumber")], [0, 1]],
      ["sideLength", ["BuildingSync::BuildingType::Sections::Section::Sides::Side::SideLength", XSD::QName.new(NsC_2019, "SideLength")], [0, 1]],
      [ :choice,
        ["wallID", ["BuildingSync::WallID", XSD::QName.new(NsC_2019, "WallID")], [0, 1]],
        ["wallIDs", ["BuildingSync::BuildingType::Sections::Section::Sides::Side::WallIDs", XSD::QName.new(NsC_2019, "WallIDs")]]
      ],
      [ :choice,
        ["windowID", ["BuildingSync::WindowID", XSD::QName.new(NsC_2019, "WindowID")], [0, 1]],
        ["windowIDs", ["BuildingSync::BuildingType::Sections::Section::Sides::Side::WindowIDs", XSD::QName.new(NsC_2019, "WindowIDs")], [0, 1]]
      ],
      [ :choice,
        ["doorID", ["BuildingSync::DoorID", XSD::QName.new(NsC_2019, "DoorID")], [0, 1]],
        ["doorIDs", ["BuildingSync::BuildingType::Sections::Section::Sides::Side::DoorIDs", XSD::QName.new(NsC_2019, "DoorIDs")], [0, 1]]
      ],
      ["thermalZoneIDs", ["BuildingSync::ThermalZoneIDs", XSD::QName.new(NsC_2019, "ThermalZoneIDs")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Sides,
    :schema_name => XSD::QName.new(NsC_2019, "Sides"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["side", ["BuildingSync::BuildingType::Sections::Section::Sides::Side[]", XSD::QName.new(NsC_2019, "Side")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::RoofArea,
    :schema_name => XSD::QName.new(NsC_2019, "RoofArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::RoofInsulatedArea,
    :schema_name => XSD::QName.new(NsC_2019, "RoofInsulatedArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs::SkylightID::PercentSkylightArea,
    :schema_name => XSD::QName.new(NsC_2019, "PercentSkylightArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs::SkylightID,
    :schema_name => XSD::QName.new(NsC_2019, "SkylightID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["percentSkylightArea", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs::SkylightID::PercentSkylightArea", XSD::QName.new(NsC_2019, "PercentSkylightArea")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs,
    :schema_name => XSD::QName.new(NsC_2019, "SkylightIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["skylightID", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs::SkylightID[]", XSD::QName.new(NsC_2019, "SkylightID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID,
    :schema_name => XSD::QName.new(NsC_2019, "RoofID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roofArea", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::RoofArea", XSD::QName.new(NsC_2019, "RoofArea")], [0, 1]],
      ["roofInsulatedArea", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::RoofInsulatedArea", XSD::QName.new(NsC_2019, "RoofInsulatedArea")], [0, 1]],
      ["roofCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "RoofCondition")], [0, 1]],
      ["skylightIDs", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID::SkylightIDs", XSD::QName.new(NsC_2019, "SkylightIDs")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs::Roof,
    :schema_name => XSD::QName.new(NsC_2019, "Roof"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roofID", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof::RoofID", XSD::QName.new(NsC_2019, "RoofID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Roofs,
    :schema_name => XSD::QName.new(NsC_2019, "Roofs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roof", ["BuildingSync::BuildingType::Sections::Section::Roofs::Roof[]", XSD::QName.new(NsC_2019, "Roof")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID::CeilingArea,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID::CeilingInsulatedArea,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingInsulatedArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceilingArea", ["BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID::CeilingArea", XSD::QName.new(NsC_2019, "CeilingArea")], [0, 1]],
      ["ceilingInsulatedArea", ["BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID::CeilingInsulatedArea", XSD::QName.new(NsC_2019, "CeilingInsulatedArea")], [0, 1]],
      ["thermalZoneIDs", ["BuildingSync::ThermalZoneIDs", XSD::QName.new(NsC_2019, "ThermalZoneIDs")], [0, 1]],
      ["spaceIDs", ["BuildingSync::SpaceIDs", XSD::QName.new(NsC_2019, "SpaceIDs")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling,
    :schema_name => XSD::QName.new(NsC_2019, "Ceiling"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceilingID", ["BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling::CeilingID", XSD::QName.new(NsC_2019, "CeilingID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Ceilings,
    :schema_name => XSD::QName.new(NsC_2019, "Ceilings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceiling", ["BuildingSync::BuildingType::Sections::Section::Ceilings::Ceiling[]", XSD::QName.new(NsC_2019, "Ceiling")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor::ExteriorFloorID::ExteriorFloorArea,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor::ExteriorFloorID,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exteriorFloorArea", ["BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor::ExteriorFloorID::ExteriorFloorArea", XSD::QName.new(NsC_2019, "ExteriorFloorArea")], [0, 1]],
      ["thermalZoneIDs", ["BuildingSync::ThermalZoneIDs", XSD::QName.new(NsC_2019, "ThermalZoneIDs")], [0, 1]],
      ["spaceIDs", ["BuildingSync::SpaceIDs", XSD::QName.new(NsC_2019, "SpaceIDs")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exteriorFloorID", ["BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor::ExteriorFloorID", XSD::QName.new(NsC_2019, "ExteriorFloorID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ExteriorFloors,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloors"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exteriorFloor", ["BuildingSync::BuildingType::Sections::Section::ExteriorFloors::ExteriorFloor[]", XSD::QName.new(NsC_2019, "ExteriorFloor")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Foundations::Foundation::FoundationID::FoundationArea,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Foundations::Foundation::FoundationID,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["foundationArea", ["BuildingSync::BuildingType::Sections::Section::Foundations::Foundation::FoundationID::FoundationArea", XSD::QName.new(NsC_2019, "FoundationArea")], [0, 1]],
      ["thermalZoneIDs", ["BuildingSync::ThermalZoneIDs", XSD::QName.new(NsC_2019, "ThermalZoneIDs")], [0, 1]],
      ["spaceIDs", ["BuildingSync::SpaceIDs", XSD::QName.new(NsC_2019, "SpaceIDs")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Foundations::Foundation,
    :schema_name => XSD::QName.new(NsC_2019, "Foundation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["foundationID", ["BuildingSync::BuildingType::Sections::Section::Foundations::Foundation::FoundationID", XSD::QName.new(NsC_2019, "FoundationID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::Foundations,
    :schema_name => XSD::QName.new(NsC_2019, "Foundations"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["foundation", ["BuildingSync::BuildingType::Sections::Section::Foundations::Foundation[]", XSD::QName.new(NsC_2019, "Foundation")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::XOffset,
    :schema_name => XSD::QName.new(NsC_2019, "XOffset"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::YOffset,
    :schema_name => XSD::QName.new(NsC_2019, "YOffset"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ZOffset,
    :schema_name => XSD::QName.new(NsC_2019, "ZOffset"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::FloorsPartiallyBelowGrade,
    :schema_name => XSD::QName.new(NsC_2019, "FloorsPartiallyBelowGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::FloorToFloorHeight,
    :schema_name => XSD::QName.new(NsC_2019, "FloorToFloorHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::FloorToCeilingHeight,
    :schema_name => XSD::QName.new(NsC_2019, "FloorToCeilingHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section::ThermalZones,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalZones"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["thermalZone", ["BuildingSync::ThermalZoneType[]", XSD::QName.new(NsC_2019, "ThermalZone")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections::Section,
    :schema_name => XSD::QName.new(NsC_2019, "Section"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["premisesName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesName")], [0, 1]],
      ["sectionType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SectionType")], [0, 1]],
      ["premisesNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesNotes")], [0, 1]],
      ["premisesIdentifiers", ["BuildingSync::PremisesIdentifiers", XSD::QName.new(NsC_2019, "PremisesIdentifiers")], [0, 1]],
      ["occupancyClassification", ["BuildingSync::OccupancyClassificationType", XSD::QName.new(NsC_2019, "OccupancyClassification")], [0, 1]],
      ["originalOccupancyClassification", ["BuildingSync::OccupancyClassificationType", XSD::QName.new(NsC_2019, "OriginalOccupancyClassification")], [0, 1]],
      ["occupancyLevels", ["BuildingSync::OccupancyLevels", XSD::QName.new(NsC_2019, "OccupancyLevels")], [0, 1]],
      ["typicalOccupantUsages", ["BuildingSync::TypicalOccupantUsages", XSD::QName.new(NsC_2019, "TypicalOccupantUsages")], [0, 1]],
      ["spatialUnits", ["BuildingSync::SpatialUnits", XSD::QName.new(NsC_2019, "SpatialUnits")], [0, 1]],
      ["primaryContactID", ["BuildingSync::PrimaryContactID", XSD::QName.new(NsC_2019, "PrimaryContactID")], [0, 1]],
      ["tenantIDs", ["BuildingSync::TenantIDs[]", XSD::QName.new(NsC_2019, "TenantIDs")], [0, nil]],
      ["principalHVACSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrincipalHVACSystemType")], [0, 1]],
      ["principalLightingSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrincipalLightingSystemType")], [0, 1]],
      ["yearOfConstruction", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfConstruction")], [0, 1]],
      ["footprintShape", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FootprintShape")], [0, 1]],
      ["numberOfSides", ["BuildingSync::BuildingType::Sections::Section::NumberOfSides", XSD::QName.new(NsC_2019, "NumberOfSides")], [0, 1]],
      ["story", ["SOAP::SOAPInt", XSD::QName.new(NsC_2019, "Story")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]],
      ["thermalZoneLayout", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThermalZoneLayout")], [0, 1]],
      ["perimeterZoneDepth", ["BuildingSync::BuildingType::Sections::Section::PerimeterZoneDepth", XSD::QName.new(NsC_2019, "PerimeterZoneDepth")], [0, 1]],
      ["sideA1Orientation", ["BuildingSync::BuildingType::Sections::Section::SideA1Orientation", XSD::QName.new(NsC_2019, "SideA1Orientation")], [0, 1]],
      ["sides", ["BuildingSync::BuildingType::Sections::Section::Sides", XSD::QName.new(NsC_2019, "Sides")], [0, 1]],
      ["roofs", ["BuildingSync::BuildingType::Sections::Section::Roofs", XSD::QName.new(NsC_2019, "Roofs")], [0, 1]],
      ["ceilings", ["BuildingSync::BuildingType::Sections::Section::Ceilings", XSD::QName.new(NsC_2019, "Ceilings")], [0, 1]],
      ["exteriorFloors", ["BuildingSync::BuildingType::Sections::Section::ExteriorFloors", XSD::QName.new(NsC_2019, "ExteriorFloors")], [0, 1]],
      ["foundations", ["BuildingSync::BuildingType::Sections::Section::Foundations", XSD::QName.new(NsC_2019, "Foundations")], [0, 1]],
      ["xOffset", ["BuildingSync::BuildingType::Sections::Section::XOffset", XSD::QName.new(NsC_2019, "XOffset")], [0, 1]],
      ["yOffset", ["BuildingSync::BuildingType::Sections::Section::YOffset", XSD::QName.new(NsC_2019, "YOffset")], [0, 1]],
      ["zOffset", ["BuildingSync::BuildingType::Sections::Section::ZOffset", XSD::QName.new(NsC_2019, "ZOffset")], [0, 1]],
      ["floorsAboveGrade", ["BuildingSync::FloorsAboveGrade", XSD::QName.new(NsC_2019, "FloorsAboveGrade")], [0, 1]],
      ["floorsBelowGrade", ["BuildingSync::FloorsBelowGrade", XSD::QName.new(NsC_2019, "FloorsBelowGrade")], [0, 1]],
      ["floorsPartiallyBelowGrade", ["BuildingSync::BuildingType::Sections::Section::FloorsPartiallyBelowGrade", XSD::QName.new(NsC_2019, "FloorsPartiallyBelowGrade")], [0, 1]],
      ["floorToFloorHeight", ["BuildingSync::BuildingType::Sections::Section::FloorToFloorHeight", XSD::QName.new(NsC_2019, "FloorToFloorHeight")], [0, 1]],
      ["floorToCeilingHeight", ["BuildingSync::BuildingType::Sections::Section::FloorToCeilingHeight", XSD::QName.new(NsC_2019, "FloorToCeilingHeight")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["thermalZones", ["BuildingSync::BuildingType::Sections::Section::ThermalZones", XSD::QName.new(NsC_2019, "ThermalZones")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingType::Sections,
    :schema_name => XSD::QName.new(NsC_2019, "Sections"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["section", ["BuildingSync::BuildingType::Sections::Section[]", XSD::QName.new(NsC_2019, "Section")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType,
    :schema_type => XSD::QName.new(NsC_2019, "ThermalZoneType"),
    :schema_element => [
      ["premisesName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesName")], [0, 1]],
      ["deliveryIDs", ["BuildingSync::ThermalZoneType::DeliveryIDs", XSD::QName.new(NsC_2019, "DeliveryIDs")], [0, 1]],
      ["hVACScheduleIDs", ["BuildingSync::ThermalZoneType::HVACScheduleIDs", XSD::QName.new(NsC_2019, "HVACScheduleIDs")], [0, 1]],
      ["setpointTemperatureHeating", ["BuildingSync::ThermalZoneType::SetpointTemperatureHeating", XSD::QName.new(NsC_2019, "SetpointTemperatureHeating")], [0, 1]],
      ["setbackTemperatureHeating", ["BuildingSync::ThermalZoneType::SetbackTemperatureHeating", XSD::QName.new(NsC_2019, "SetbackTemperatureHeating")], [0, 1]],
      ["heatLowered", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatLowered")], [0, 1]],
      ["setpointTemperatureCooling", ["BuildingSync::ThermalZoneType::SetpointTemperatureCooling", XSD::QName.new(NsC_2019, "SetpointTemperatureCooling")], [0, 1]],
      ["setupTemperatureCooling", ["BuildingSync::ThermalZoneType::SetupTemperatureCooling", XSD::QName.new(NsC_2019, "SetupTemperatureCooling")], [0, 1]],
      ["aCAdjusted", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ACAdjusted")], [0, 1]],
      ["spaces", ["BuildingSync::ThermalZoneType::Spaces", XSD::QName.new(NsC_2019, "Spaces")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::DeliveryIDs::DeliveryID,
    :schema_name => XSD::QName.new(NsC_2019, "DeliveryID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::DeliveryIDs,
    :schema_name => XSD::QName.new(NsC_2019, "DeliveryIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["deliveryID", ["BuildingSync::ThermalZoneType::DeliveryIDs::DeliveryID[]", XSD::QName.new(NsC_2019, "DeliveryID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::HVACScheduleIDs::HVACScheduleID,
    :schema_name => XSD::QName.new(NsC_2019, "HVACScheduleID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::HVACScheduleIDs,
    :schema_name => XSD::QName.new(NsC_2019, "HVACScheduleIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["hVACScheduleID", ["BuildingSync::ThermalZoneType::HVACScheduleIDs::HVACScheduleID[]", XSD::QName.new(NsC_2019, "HVACScheduleID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::SetpointTemperatureHeating,
    :schema_name => XSD::QName.new(NsC_2019, "SetpointTemperatureHeating"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::SetbackTemperatureHeating,
    :schema_name => XSD::QName.new(NsC_2019, "SetbackTemperatureHeating"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::SetpointTemperatureCooling,
    :schema_name => XSD::QName.new(NsC_2019, "SetpointTemperatureCooling"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::SetupTemperatureCooling,
    :schema_name => XSD::QName.new(NsC_2019, "SetupTemperatureCooling"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneType::Spaces,
    :schema_name => XSD::QName.new(NsC_2019, "Spaces"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["space", ["BuildingSync::SpaceType[]", XSD::QName.new(NsC_2019, "Space")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::SpaceType,
    :schema_type => XSD::QName.new(NsC_2019, "SpaceType"),
    :schema_element => [
      ["premisesName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesName")], [0, 1]],
      ["premisesNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PremisesNotes")], [0, 1]],
      ["premisesIdentifiers", ["BuildingSync::PremisesIdentifiers", XSD::QName.new(NsC_2019, "PremisesIdentifiers")], [0, 1]],
      ["occupancyClassification", ["BuildingSync::OccupancyClassificationType", XSD::QName.new(NsC_2019, "OccupancyClassification")], [0, 1]],
      ["occupancyLevels", ["BuildingSync::OccupancyLevels", XSD::QName.new(NsC_2019, "OccupancyLevels")], [0, 1]],
      ["typicalOccupantUsages", ["BuildingSync::TypicalOccupantUsages", XSD::QName.new(NsC_2019, "TypicalOccupantUsages")], [0, 1]],
      ["occupancyScheduleIDs", ["BuildingSync::SpaceType::OccupancyScheduleIDs", XSD::QName.new(NsC_2019, "OccupancyScheduleIDs")], [0, 1]],
      ["occupantsActivityLevel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OccupantsActivityLevel")], [0, 1]],
      ["daylitFloorArea", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "DaylitFloorArea")], [0, 1]],
      ["daylightingIlluminanceSetpoint", ["BuildingSync::SpaceType::DaylightingIlluminanceSetpoint", XSD::QName.new(NsC_2019, "DaylightingIlluminanceSetpoint")], [0, 1]],
      ["primaryContactID", ["BuildingSync::PrimaryContactID", XSD::QName.new(NsC_2019, "PrimaryContactID")], [0, 1]],
      ["tenantIDs", ["BuildingSync::TenantIDs[]", XSD::QName.new(NsC_2019, "TenantIDs")], [0, nil]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]],
      ["percentageOfCommonSpace", ["BuildingSync::SpaceType::PercentageOfCommonSpace", XSD::QName.new(NsC_2019, "PercentageOfCommonSpace")], [0, 1]],
      ["conditionedVolume", ["BuildingSync::SpaceType::ConditionedVolume", XSD::QName.new(NsC_2019, "ConditionedVolume")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["area", ["BuildingSync::Area", XSD::QName.new(NsSchema, "Area")], [0, 1]],
      ["volume", ["BuildingSync::Volume", XSD::QName.new(NsSchema, "Volume")], [0, 1]],
      ["planarGeometry", ["BuildingSync::PlanarGeometry", XSD::QName.new(NsSchema, "PlanarGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["spaceBoundary", ["BuildingSync::SpaceBoundary[]", XSD::QName.new(NsSchema, "SpaceBoundary")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceType::OccupancyScheduleIDs::OccupancyScheduleID,
    :schema_name => XSD::QName.new(NsC_2019, "OccupancyScheduleID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceType::OccupancyScheduleIDs,
    :schema_name => XSD::QName.new(NsC_2019, "OccupancyScheduleIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["occupancyScheduleID", ["BuildingSync::SpaceType::OccupancyScheduleIDs::OccupancyScheduleID[]", XSD::QName.new(NsC_2019, "OccupancyScheduleID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::SpaceType::DaylightingIlluminanceSetpoint,
    :schema_name => XSD::QName.new(NsC_2019, "DaylightingIlluminanceSetpoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceType::PercentageOfCommonSpace,
    :schema_name => XSD::QName.new(NsC_2019, "PercentageOfCommonSpace"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceType::ConditionedVolume,
    :schema_name => XSD::QName.new(NsC_2019, "ConditionedVolume"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScheduleType,
    :schema_type => XSD::QName.new(NsC_2019, "ScheduleType"),
    :schema_element => [
      ["schedulePeriodBeginDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "SchedulePeriodBeginDate")], [0, 1]],
      ["schedulePeriodEndDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "SchedulePeriodEndDate")], [0, 1]],
      ["scheduleDetails", ["BuildingSync::ScheduleType::ScheduleDetails", XSD::QName.new(NsC_2019, "ScheduleDetails")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScheduleType::ScheduleDetails::ScheduleDetail::PartialOperationPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "PartialOperationPercentage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScheduleType::ScheduleDetails::ScheduleDetail,
    :schema_name => XSD::QName.new(NsC_2019, "ScheduleDetail"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["dayType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DayType")], [0, 1]],
      ["scheduleCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ScheduleCategory")], [0, 1]],
      ["dayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "DayStartTime")], [0, 1]],
      ["dayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "DayEndTime")], [0, 1]],
      ["partialOperationPercentage", ["BuildingSync::ScheduleType::ScheduleDetails::ScheduleDetail::PartialOperationPercentage", XSD::QName.new(NsC_2019, "PartialOperationPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScheduleType::ScheduleDetails,
    :schema_name => XSD::QName.new(NsC_2019, "ScheduleDetails"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["scheduleDetail", ["BuildingSync::ScheduleType::ScheduleDetails::ScheduleDetail[]", XSD::QName.new(NsC_2019, "ScheduleDetail")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ContactType,
    :schema_type => XSD::QName.new(NsC_2019, "ContactType"),
    :schema_element => [
      ["contactRoles", ["BuildingSync::ContactType::ContactRoles", XSD::QName.new(NsC_2019, "ContactRoles")], [0, 1]],
      ["contactName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ContactName")], [0, 1]],
      ["contactCompany", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ContactCompany")], [0, 1]],
      ["contactTitle", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ContactTitle")], [0, 1]],
      ["address", ["BuildingSync::Address", XSD::QName.new(NsC_2019, "Address")], [0, 1]],
      ["contactTelephoneNumbers", ["BuildingSync::ContactType::ContactTelephoneNumbers", XSD::QName.new(NsC_2019, "ContactTelephoneNumbers")], [0, 1]],
      ["contactEmailAddresses", ["BuildingSync::ContactType::ContactEmailAddresses", XSD::QName.new(NsC_2019, "ContactEmailAddresses")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ContactType::ContactRoles,
    :schema_name => XSD::QName.new(NsC_2019, "ContactRoles"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactRole", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "ContactRole")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ContactType::ContactTelephoneNumbers::ContactTelephoneNumber,
    :schema_name => XSD::QName.new(NsC_2019, "ContactTelephoneNumber"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactTelephoneNumberLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ContactTelephoneNumberLabel")], [0, 1]],
      ["telephoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TelephoneNumber")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ContactType::ContactTelephoneNumbers,
    :schema_name => XSD::QName.new(NsC_2019, "ContactTelephoneNumbers"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactTelephoneNumber", ["BuildingSync::ContactType::ContactTelephoneNumbers::ContactTelephoneNumber[]", XSD::QName.new(NsC_2019, "ContactTelephoneNumber")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ContactType::ContactEmailAddresses::ContactEmailAddress,
    :schema_name => XSD::QName.new(NsC_2019, "ContactEmailAddress"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactEmailAddressLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ContactEmailAddressLabel")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EmailAddress")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ContactType::ContactEmailAddresses,
    :schema_name => XSD::QName.new(NsC_2019, "ContactEmailAddresses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactEmailAddress", ["BuildingSync::ContactType::ContactEmailAddresses::ContactEmailAddress[]", XSD::QName.new(NsC_2019, "ContactEmailAddress")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantType,
    :schema_type => XSD::QName.new(NsC_2019, "TenantType"),
    :schema_element => [
      ["tenantName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TenantName")], [0, 1]],
      ["address", ["BuildingSync::Address", XSD::QName.new(NsC_2019, "Address")], [0, 1]],
      ["tenantTelephoneNumbers", ["BuildingSync::TenantType::TenantTelephoneNumbers", XSD::QName.new(NsC_2019, "TenantTelephoneNumbers")], [0, 1]],
      ["tenantEmailAddresses", ["BuildingSync::TenantType::TenantEmailAddresses", XSD::QName.new(NsC_2019, "TenantEmailAddresses")], [0, 1]],
      ["contactIDs", ["BuildingSync::TenantType::ContactIDs", XSD::QName.new(NsC_2019, "ContactIDs")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::TenantType::TenantTelephoneNumbers::TenantTelephoneNumber,
    :schema_name => XSD::QName.new(NsC_2019, "TenantTelephoneNumber"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tenantTelephoneNumberLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TenantTelephoneNumberLabel")], [0, 1]],
      ["telephoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TelephoneNumber")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantType::TenantTelephoneNumbers,
    :schema_name => XSD::QName.new(NsC_2019, "TenantTelephoneNumbers"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tenantTelephoneNumber", ["BuildingSync::TenantType::TenantTelephoneNumbers::TenantTelephoneNumber[]", XSD::QName.new(NsC_2019, "TenantTelephoneNumber")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantType::TenantEmailAddresses::TenantEmailAddress,
    :schema_name => XSD::QName.new(NsC_2019, "TenantEmailAddress"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tenantEmailAddressLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TenantEmailAddressLabel")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EmailAddress")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantType::TenantEmailAddresses,
    :schema_name => XSD::QName.new(NsC_2019, "TenantEmailAddresses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tenantEmailAddress", ["BuildingSync::TenantType::TenantEmailAddresses::TenantEmailAddress[]", XSD::QName.new(NsC_2019, "TenantEmailAddress")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantType::ContactIDs::ContactID,
    :schema_name => XSD::QName.new(NsC_2019, "ContactID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TenantType::ContactIDs,
    :schema_name => XSD::QName.new(NsC_2019, "ContactIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contactID", ["BuildingSync::TenantType::ContactIDs::ContactID[]", XSD::QName.new(NsC_2019, "ContactID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AuditCycleType,
    :schema_type => XSD::QName.new(NsC_2019, "AuditCycleType"),
    :schema_element => [
      ["auditCycleName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AuditCycleName")], [0, 1]],
      ["auditCycleNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AuditCycleNotes")], [0, 1]],
      ["auditCycleStartYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "AuditCycleStartYear")]],
      ["auditCycleEndYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "AuditCycleEndYear")]],
      ["auditCycleStartDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "AuditCycleStartDate")]],
      ["auditCycleEndDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "AuditCycleEndDate")]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType,
    :schema_type => XSD::QName.new(NsC_2019, "ScenarioType"),
    :schema_element => [
      ["scenarioName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ScenarioName")], [0, 1]],
      ["scenarioNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ScenarioNotes")], [0, 1]],
      ["temporalStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TemporalStatus")], [0, 1]],
      ["normalization", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Normalization")], [0, 1]],
      ["scenarioType", ["BuildingSync::ScenarioType::ScenarioType", XSD::QName.new(NsC_2019, "ScenarioType")], [0, 1]],
      ["weatherType", ["BuildingSync::ScenarioType::WeatherType", XSD::QName.new(NsC_2019, "WeatherType")], [0, 1]],
      ["resourceUses", ["BuildingSync::ScenarioType::ResourceUses", XSD::QName.new(NsC_2019, "ResourceUses")], [0, 1]],
      ["timeSeriesData", ["BuildingSync::ScenarioType::TimeSeriesData", XSD::QName.new(NsC_2019, "TimeSeriesData")], [0, 1]],
      ["allResourceTotals", ["BuildingSync::ScenarioType::AllResourceTotals", XSD::QName.new(NsC_2019, "AllResourceTotals")], [0, 1]],
      ["annualHeatingDegreeDays", ["BuildingSync::ScenarioType::AnnualHeatingDegreeDays", XSD::QName.new(NsC_2019, "AnnualHeatingDegreeDays")], [0, 1]],
      ["annualCoolingDegreeDays", ["BuildingSync::ScenarioType::AnnualCoolingDegreeDays", XSD::QName.new(NsC_2019, "AnnualCoolingDegreeDays")], [0, 1]],
      ["hDDBaseTemperature", ["BuildingSync::HDDBaseTemperature", XSD::QName.new(NsC_2019, "HDDBaseTemperature")], [0, 1]],
      ["cDDBaseTemperature", ["BuildingSync::CDDBaseTemperature", XSD::QName.new(NsC_2019, "CDDBaseTemperature")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::CurrentBuilding,
    :schema_name => XSD::QName.new(NsC_2019, "CurrentBuilding"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]],
      ["assetScore", ["BuildingSync::AssetScore", XSD::QName.new(NsC_2019, "AssetScore")], [0, 1]],
      ["eNERGYSTARScore", ["BuildingSync::ENERGYSTARScore", XSD::QName.new(NsC_2019, "ENERGYSTARScore")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::CodeMinimum,
    :schema_name => XSD::QName.new(NsC_2019, "CodeMinimum"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["codeName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CodeName")], [0, 1]],
      ["codeVersion", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CodeVersion")], [0, 1]],
      ["codeYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "CodeYear")], [0, 1]],
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::StandardPractice,
    :schema_name => XSD::QName.new(NsC_2019, "StandardPractice"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["standardPracticeDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StandardPracticeDescription")], [0, 1]],
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::Other,
    :schema_name => XSD::QName.new(NsC_2019, "Other"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["otherBenchmarkDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherBenchmarkDescription")], [0, 1]],
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType,
    :schema_name => XSD::QName.new(NsC_2019, "BenchmarkType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["portfolioManager", ["BuildingSync::PortfolioManagerType", XSD::QName.new(NsC_2019, "PortfolioManager")], [0, 1]],
      ["cBECS", ["BuildingSync::CBECSType", XSD::QName.new(NsC_2019, "CBECS")], [0, 1]],
      ["codeMinimum", ["BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::CodeMinimum", XSD::QName.new(NsC_2019, "CodeMinimum")], [0, 1]],
      ["standardPractice", ["BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::StandardPractice", XSD::QName.new(NsC_2019, "StandardPractice")], [0, 1]],
      ["other", ["BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType::Other", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkValue,
    :schema_name => XSD::QName.new(NsC_2019, "BenchmarkValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Benchmark,
    :schema_name => XSD::QName.new(NsC_2019, "Benchmark"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["benchmarkType", ["BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkType", XSD::QName.new(NsC_2019, "BenchmarkType")], [0, 1]],
      ["benchmarkTool", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BenchmarkTool")], [0, 1]],
      ["benchmarkYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "BenchmarkYear")], [0, 1]],
      ["benchmarkValue", ["BuildingSync::ScenarioType::ScenarioType::Benchmark::BenchmarkValue", XSD::QName.new(NsC_2019, "BenchmarkValue")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Target,
    :schema_name => XSD::QName.new(NsC_2019, "Target"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["referenceCase", ["BuildingSync::ReferenceCase", XSD::QName.new(NsC_2019, "ReferenceCase")], [0, 1]],
      ["annualSavingsSiteEnergy", ["BuildingSync::AnnualSavingsSiteEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSiteEnergy")], [0, 1]],
      ["annualSavingsSourceEnergy", ["BuildingSync::AnnualSavingsSourceEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSourceEnergy")], [0, 1]],
      ["annualSavingsCost", ["BuildingSync::AnnualSavingsCost", XSD::QName.new(NsC_2019, "AnnualSavingsCost")], [0, 1]],
      ["summerPeakElectricityReduction", ["BuildingSync::SummerPeakElectricityReduction", XSD::QName.new(NsC_2019, "SummerPeakElectricityReduction")], [0, 1]],
      ["winterPeakElectricityReduction", ["BuildingSync::WinterPeakElectricityReduction", XSD::QName.new(NsC_2019, "WinterPeakElectricityReduction")], [0, 1]],
      ["annualPeakElectricityReduction", ["BuildingSync::AnnualPeakElectricityReduction", XSD::QName.new(NsC_2019, "AnnualPeakElectricityReduction")], [0, 1]],
      ["annualWaterSavings", ["BuildingSync::AnnualWaterSavings", XSD::QName.new(NsC_2019, "AnnualWaterSavings")], [0, 1]],
      ["annualWaterCostSavings", ["BuildingSync::AnnualWaterCostSavings", XSD::QName.new(NsC_2019, "AnnualWaterCostSavings")], [0, 1]],
      ["annualSavingsAverageGHGEmissions", ["BuildingSync::AnnualSavingsAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions")], [0, 1]],
      ["annualSavingsMarginalGHGEmissions", ["BuildingSync::AnnualSavingsMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions")], [0, 1]],
      ["annualSavingsGHGEmissionIntensity", ["BuildingSync::AnnualSavingsGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity")], [0, 1]],
      ["lifeCycleSavingsEnergy", ["BuildingSync::LifeCycleSavingsEnergy", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergy")], [0, 1]],
      ["lifeCycleSavingsEnergyCost", ["BuildingSync::LifeCycleSavingsEnergyCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergyCost")], [0, 1]],
      ["lifeCycleSavingsWater", ["BuildingSync::LifeCycleSavingsWater", XSD::QName.new(NsC_2019, "LifeCycleSavingsWater")], [0, 1]],
      ["lifeCycleSavingsWaterCost", ["BuildingSync::LifeCycleSavingsWaterCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsWaterCost")], [0, 1]],
      ["lifeCycleSavingsAncillaryCost", ["BuildingSync::LifeCycleSavingsAncillaryCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsAncillaryCost")], [0, 1]],
      ["simplePayback", ["BuildingSync::SimplePayback", XSD::QName.new(NsC_2019, "SimplePayback")], [0, 1]],
      ["netPresentValue", ["BuildingSync::NetPresentValue", XSD::QName.new(NsC_2019, "NetPresentValue")], [0, 1]],
      ["internalRateOfReturn", ["BuildingSync::InternalRateOfReturn", XSD::QName.new(NsC_2019, "InternalRateOfReturn")], [0, 1]],
      ["assetScore", ["BuildingSync::AssetScore", XSD::QName.new(NsC_2019, "AssetScore")], [0, 1]],
      ["eNERGYSTARScore", ["BuildingSync::ENERGYSTARScore", XSD::QName.new(NsC_2019, "ENERGYSTARScore")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::MeasureIDs::MeasureID,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureSavingsAnalysis", ["BuildingSync::MeasureSavingsAnalysis", XSD::QName.new(NsC_2019, "MeasureSavingsAnalysis")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::MeasureIDs,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureID", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::MeasureIDs::MeasureID[]", XSD::QName.new(NsC_2019, "MeasureID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::SimpleImpactAnalysis,
    :schema_name => XSD::QName.new(NsC_2019, "SimpleImpactAnalysis"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["impactOnOccupantComfort", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ImpactOnOccupantComfort")], [0, 1]],
      ["estimatedCost", ["BuildingSync::LowMedHigh", XSD::QName.new(NsC_2019, "EstimatedCost")], [0, 1]],
      ["estimatedAnnualSavings", ["BuildingSync::LowMedHigh", XSD::QName.new(NsC_2019, "EstimatedAnnualSavings")], [0, 1]],
      ["estimatedROI", ["BuildingSync::LowMedHigh", XSD::QName.new(NsC_2019, "EstimatedROI")], [0, 1]],
      ["priority", ["BuildingSync::LowMedHigh", XSD::QName.new(NsC_2019, "Priority")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::PackageFirstCost,
    :schema_name => XSD::QName.new(NsC_2019, "PackageFirstCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::ImplementationPeriodCostSavings,
    :schema_name => XSD::QName.new(NsC_2019, "ImplementationPeriodCostSavings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::PercentGuaranteedSavings,
    :schema_name => XSD::QName.new(NsC_2019, "PercentGuaranteedSavings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::ProjectMarkup,
    :schema_name => XSD::QName.new(NsC_2019, "ProjectMarkup"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::OtherFinancialIncentives,
    :schema_name => XSD::QName.new(NsC_2019, "OtherFinancialIncentives"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::RecurringIncentives,
    :schema_name => XSD::QName.new(NsC_2019, "RecurringIncentives"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures,
    :schema_name => XSD::QName.new(NsC_2019, "PackageOfMeasures"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["referenceCase", ["BuildingSync::ReferenceCase", XSD::QName.new(NsC_2019, "ReferenceCase")], [0, 1]],
      ["measureIDs", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::MeasureIDs", XSD::QName.new(NsC_2019, "MeasureIDs")], [0, 1]],
      ["costCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CostCategory")], [0, 1]],
      ["simpleImpactAnalysis", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::SimpleImpactAnalysis", XSD::QName.new(NsC_2019, "SimpleImpactAnalysis")], [0, 1]],
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]],
      ["annualSavingsSiteEnergy", ["BuildingSync::AnnualSavingsSiteEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSiteEnergy")], [0, 1]],
      ["annualSavingsSourceEnergy", ["BuildingSync::AnnualSavingsSourceEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSourceEnergy")], [0, 1]],
      ["annualSavingsCost", ["BuildingSync::AnnualSavingsCost", XSD::QName.new(NsC_2019, "AnnualSavingsCost")], [0, 1]],
      ["annualSavingsByFuels", ["BuildingSync::AnnualSavingsByFuels", XSD::QName.new(NsC_2019, "AnnualSavingsByFuels")], [0, 1]],
      ["summerPeakElectricityReduction", ["BuildingSync::SummerPeakElectricityReduction", XSD::QName.new(NsC_2019, "SummerPeakElectricityReduction")], [0, 1]],
      ["winterPeakElectricityReduction", ["BuildingSync::WinterPeakElectricityReduction", XSD::QName.new(NsC_2019, "WinterPeakElectricityReduction")], [0, 1]],
      ["annualPeakElectricityReduction", ["BuildingSync::AnnualPeakElectricityReduction", XSD::QName.new(NsC_2019, "AnnualPeakElectricityReduction")], [0, 1]],
      ["annualDemandSavingsCost", ["BuildingSync::AnnualDemandSavingsCost", XSD::QName.new(NsC_2019, "AnnualDemandSavingsCost")], [0, 1]],
      ["annualWaterSavings", ["BuildingSync::AnnualWaterSavings", XSD::QName.new(NsC_2019, "AnnualWaterSavings")], [0, 1]],
      ["annualWaterCostSavings", ["BuildingSync::AnnualWaterCostSavings", XSD::QName.new(NsC_2019, "AnnualWaterCostSavings")], [0, 1]],
      ["annualSavingsAverageGHGEmissions", ["BuildingSync::AnnualSavingsAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions")], [0, 1]],
      ["annualSavingsMarginalGHGEmissions", ["BuildingSync::AnnualSavingsMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions")], [0, 1]],
      ["annualSavingsGHGEmissionIntensity", ["BuildingSync::AnnualSavingsGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity")], [0, 1]],
      ["lifeCycleSavingsEnergy", ["BuildingSync::LifeCycleSavingsEnergy", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergy")], [0, 1]],
      ["lifeCycleSavingsEnergyCost", ["BuildingSync::LifeCycleSavingsEnergyCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergyCost")], [0, 1]],
      ["lifeCycleSavingsWater", ["BuildingSync::LifeCycleSavingsWater", XSD::QName.new(NsC_2019, "LifeCycleSavingsWater")], [0, 1]],
      ["lifeCycleSavingsWaterCost", ["BuildingSync::LifeCycleSavingsWaterCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsWaterCost")], [0, 1]],
      ["lifeCycleSavingsAncillaryCost", ["BuildingSync::LifeCycleSavingsAncillaryCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsAncillaryCost")], [0, 1]],
      ["implementationPeriod", ["SOAP::SOAPInteger", XSD::QName.new(NsC_2019, "ImplementationPeriod")], [0, 1]],
      ["packageFirstCost", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::PackageFirstCost", XSD::QName.new(NsC_2019, "PackageFirstCost")], [0, 1]],
      ["mVCost", ["BuildingSync::MVCost", XSD::QName.new(NsC_2019, "MVCost")], [0, 1]],
      ["oMCostAnnualSavings", ["BuildingSync::OMCostAnnualSavings", XSD::QName.new(NsC_2019, "OMCostAnnualSavings")], [0, 1]],
      ["equipmentDisposalAndSalvageCosts", ["BuildingSync::EquipmentDisposalAndSalvageCosts", XSD::QName.new(NsC_2019, "EquipmentDisposalAndSalvageCosts")], [0, 1]],
      ["implementationPeriodCostSavings", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::ImplementationPeriodCostSavings", XSD::QName.new(NsC_2019, "ImplementationPeriodCostSavings")], [0, 1]],
      ["percentGuaranteedSavings", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::PercentGuaranteedSavings", XSD::QName.new(NsC_2019, "PercentGuaranteedSavings")], [0, 1]],
      ["projectMarkup", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::ProjectMarkup", XSD::QName.new(NsC_2019, "ProjectMarkup")], [0, 1]],
      ["fundingFromIncentives", ["BuildingSync::FundingFromIncentives", XSD::QName.new(NsC_2019, "FundingFromIncentives")], [0, 1]],
      ["fundingFromTaxCredits", ["BuildingSync::FundingFromTaxCredits", XSD::QName.new(NsC_2019, "FundingFromTaxCredits")], [0, 1]],
      ["otherFinancialIncentives", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::OtherFinancialIncentives", XSD::QName.new(NsC_2019, "OtherFinancialIncentives")], [0, 1]],
      ["recurringIncentives", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures::RecurringIncentives", XSD::QName.new(NsC_2019, "RecurringIncentives")], [0, 1]],
      ["nPVofTaxImplications", ["BuildingSync::NPVofTaxImplications", XSD::QName.new(NsC_2019, "NPVofTaxImplications")], [0, 1]],
      ["costEffectivenessScreeningMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CostEffectivenessScreeningMethod")], [0, 1]],
      ["simplePayback", ["BuildingSync::SimplePayback", XSD::QName.new(NsC_2019, "SimplePayback")], [0, 1]],
      ["netPresentValue", ["BuildingSync::NetPresentValue", XSD::QName.new(NsC_2019, "NetPresentValue")], [0, 1]],
      ["internalRateOfReturn", ["BuildingSync::InternalRateOfReturn", XSD::QName.new(NsC_2019, "InternalRateOfReturn")], [0, 1]],
      ["nonquantifiableFactors", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "NonquantifiableFactors")], [0, 1]],
      ["assetScore", ["BuildingSync::AssetScore", XSD::QName.new(NsC_2019, "AssetScore")], [0, 1]],
      ["eNERGYSTARScore", ["BuildingSync::ENERGYSTARScore", XSD::QName.new(NsC_2019, "ENERGYSTARScore")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType::Other,
    :schema_name => XSD::QName.new(NsC_2019, "Other"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["referenceCase", ["BuildingSync::ReferenceCase", XSD::QName.new(NsC_2019, "ReferenceCase")], [0, 1]],
      ["annualSavingsSiteEnergy", ["BuildingSync::AnnualSavingsSiteEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSiteEnergy")], [0, 1]],
      ["annualSavingsSourceEnergy", ["BuildingSync::AnnualSavingsSourceEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSourceEnergy")], [0, 1]],
      ["annualSavingsCost", ["BuildingSync::AnnualSavingsCost", XSD::QName.new(NsC_2019, "AnnualSavingsCost")], [0, 1]],
      ["summerPeakElectricityReduction", ["BuildingSync::SummerPeakElectricityReduction", XSD::QName.new(NsC_2019, "SummerPeakElectricityReduction")], [0, 1]],
      ["winterPeakElectricityReduction", ["BuildingSync::WinterPeakElectricityReduction", XSD::QName.new(NsC_2019, "WinterPeakElectricityReduction")], [0, 1]],
      ["annualPeakElectricityReduction", ["BuildingSync::AnnualPeakElectricityReduction", XSD::QName.new(NsC_2019, "AnnualPeakElectricityReduction")], [0, 1]],
      ["annualWaterSavings", ["BuildingSync::AnnualWaterSavings", XSD::QName.new(NsC_2019, "AnnualWaterSavings")], [0, 1]],
      ["annualWaterCostSavings", ["BuildingSync::AnnualWaterCostSavings", XSD::QName.new(NsC_2019, "AnnualWaterCostSavings")], [0, 1]],
      ["annualSavingsAverageGHGEmissions", ["BuildingSync::AnnualSavingsAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions")], [0, 1]],
      ["annualSavingsMarginalGHGEmissions", ["BuildingSync::AnnualSavingsMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions")], [0, 1]],
      ["annualSavingsGHGEmissionIntensity", ["BuildingSync::AnnualSavingsGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity")], [0, 1]],
      ["lifeCycleSavingsEnergy", ["BuildingSync::LifeCycleSavingsEnergy", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergy")], [0, 1]],
      ["lifeCycleSavingsEnergyCost", ["BuildingSync::LifeCycleSavingsEnergyCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergyCost")], [0, 1]],
      ["lifeCycleSavingsWater", ["BuildingSync::LifeCycleSavingsWater", XSD::QName.new(NsC_2019, "LifeCycleSavingsWater")], [0, 1]],
      ["lifeCycleSavingsWaterCost", ["BuildingSync::LifeCycleSavingsWaterCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsWaterCost")], [0, 1]],
      ["lifeCycleSavingsAncillaryCost", ["BuildingSync::LifeCycleSavingsAncillaryCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsAncillaryCost")], [0, 1]],
      ["simplePayback", ["BuildingSync::SimplePayback", XSD::QName.new(NsC_2019, "SimplePayback")], [0, 1]],
      ["netPresentValue", ["BuildingSync::NetPresentValue", XSD::QName.new(NsC_2019, "NetPresentValue")], [0, 1]],
      ["internalRateOfReturn", ["BuildingSync::InternalRateOfReturn", XSD::QName.new(NsC_2019, "InternalRateOfReturn")], [0, 1]],
      ["assetScore", ["BuildingSync::AssetScore", XSD::QName.new(NsC_2019, "AssetScore")], [0, 1]],
      ["eNERGYSTARScore", ["BuildingSync::ENERGYSTARScore", XSD::QName.new(NsC_2019, "ENERGYSTARScore")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ScenarioType,
    :schema_name => XSD::QName.new(NsC_2019, "ScenarioType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["currentBuilding", ["BuildingSync::ScenarioType::ScenarioType::CurrentBuilding", XSD::QName.new(NsC_2019, "CurrentBuilding")], [0, 1]],
      ["benchmark", ["BuildingSync::ScenarioType::ScenarioType::Benchmark", XSD::QName.new(NsC_2019, "Benchmark")], [0, 1]],
      ["target", ["BuildingSync::ScenarioType::ScenarioType::Target", XSD::QName.new(NsC_2019, "Target")], [0, 1]],
      ["packageOfMeasures", ["BuildingSync::ScenarioType::ScenarioType::PackageOfMeasures", XSD::QName.new(NsC_2019, "PackageOfMeasures")], [0, 1]],
      ["derivedModel", ["BuildingSync::DerivedModelType", XSD::QName.new(NsC_2019, "DerivedModel")], [0, 1]],
      ["other", ["BuildingSync::ScenarioType::ScenarioType::Other", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::WeatherType::Normalized::NormalizationYears,
    :schema_name => XSD::QName.new(NsC_2019, "NormalizationYears"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::WeatherType::Normalized,
    :schema_name => XSD::QName.new(NsC_2019, "Normalized"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["normalizationYears", ["BuildingSync::ScenarioType::WeatherType::Normalized::NormalizationYears", XSD::QName.new(NsC_2019, "NormalizationYears")], [0, 1]],
      ["normalizationStartYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "NormalizationStartYear")], [0, 1]],
      ["weatherDataSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherDataSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::WeatherType::AdjustedToYear,
    :schema_name => XSD::QName.new(NsC_2019, "AdjustedToYear"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["weatherYear", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "WeatherYear")], [0, 1]],
      ["weatherDataSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherDataSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::WeatherType::Actual,
    :schema_name => XSD::QName.new(NsC_2019, "Actual"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["weatherDataSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherDataSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::WeatherType,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["normalized", ["BuildingSync::ScenarioType::WeatherType::Normalized", XSD::QName.new(NsC_2019, "Normalized")], [0, 1]],
      ["adjustedToYear", ["BuildingSync::ScenarioType::WeatherType::AdjustedToYear", XSD::QName.new(NsC_2019, "AdjustedToYear")], [0, 1]],
      ["actual", ["BuildingSync::ScenarioType::WeatherType::Actual", XSD::QName.new(NsC_2019, "Actual")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::ResourceUses,
    :schema_name => XSD::QName.new(NsC_2019, "ResourceUses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["resourceUse", ["BuildingSync::ResourceUseType[]", XSD::QName.new(NsC_2019, "ResourceUse")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::TimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "TimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::AllResourceTotals,
    :schema_name => XSD::QName.new(NsC_2019, "AllResourceTotals"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["allResourceTotal", ["BuildingSync::AllResourceTotalType[]", XSD::QName.new(NsC_2019, "AllResourceTotal")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::AnnualHeatingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualHeatingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ScenarioType::AnnualCoolingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualCoolingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType,
    :schema_type => XSD::QName.new(NsC_2019, "UtilityType"),
    :schema_element => [
      ["rateSchedules", ["BuildingSync::UtilityType::RateSchedules", XSD::QName.new(NsC_2019, "RateSchedules")], [0, 1]],
      ["meteringConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MeteringConfiguration")], [0, 1]],
      ["typeOfResourceMeter", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TypeOfResourceMeter")], [0, 1]],
      ["fuelInterruptibility", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FuelInterruptibility")], [0, 1]],
      ["eIAUtilityID", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_2019, "EIAUtilityID")], [0, 1]],
      ["utilityName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityName")], [0, 1]],
      ["powerPlant", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PowerPlant")], [0, 1]],
      ["utilityMeterNumbers", ["BuildingSync::UtilityType::UtilityMeterNumbers", XSD::QName.new(NsC_2019, "UtilityMeterNumbers")], [0, 1]],
      ["utilityAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityAccountNumber")], [0, 1]],
      ["utilityBillpayer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityBillpayer")], [0, 1]],
      ["electricDistributionUtility", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ElectricDistributionUtility")], [0, 1]],
      ["sourceSiteRatio", ["BuildingSync::UtilityType::SourceSiteRatio", XSD::QName.new(NsC_2019, "SourceSiteRatio")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate::RatePeriods::RatePeriod,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriod"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriodName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RatePeriodName")], [0, 1]],
      ["applicableStartDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForEnergyRate")], [0, 1]],
      ["applicableEndDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForEnergyRate")], [0, 1]],
      ["applicableStartDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForDemandRate")], [0, 1]],
      ["applicableEndDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForDemandRate")], [0, 1]],
      ["demandWindow", ["BuildingSync::DemandWindow", XSD::QName.new(NsC_2019, "DemandWindow")], [0, 1]],
      ["demandRatchetPercentage", ["BuildingSync::DemandRatchetPercentage", XSD::QName.new(NsC_2019, "DemandRatchetPercentage")], [0, 1]],
      ["energyCostRate", ["BuildingSync::EnergyCostRate", XSD::QName.new(NsC_2019, "EnergyCostRate")], [0, 1]],
      ["energyRateAdjustment", ["BuildingSync::EnergyRateAdjustment", XSD::QName.new(NsC_2019, "EnergyRateAdjustment")], [0, 1]],
      ["electricDemandRate", ["BuildingSync::ElectricDemandRate", XSD::QName.new(NsC_2019, "ElectricDemandRate")], [0, 1]],
      ["demandRateAdjustment", ["BuildingSync::DemandRateAdjustment", XSD::QName.new(NsC_2019, "DemandRateAdjustment")], [0, 1]],
      ["energySellRate", ["BuildingSync::EnergySellRate", XSD::QName.new(NsC_2019, "EnergySellRate")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate::RatePeriods,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriods"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriod", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate::RatePeriods::RatePeriod[]", XSD::QName.new(NsC_2019, "RatePeriod")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate,
    :schema_name => XSD::QName.new(NsC_2019, "FlatRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriods", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate::RatePeriods", XSD::QName.new(NsC_2019, "RatePeriods")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod::TimeOfUsePeriods::TimeOfUsePeriod,
    :schema_name => XSD::QName.new(NsC_2019, "TimeOfUsePeriod"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tOUNumberForRateStructure", ["SOAP::SOAPInt", XSD::QName.new(NsC_2019, "TOUNumberForRateStructure")], [0, 1]],
      ["applicableStartTimeForEnergyRate", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "ApplicableStartTimeForEnergyRate")], [0, 1]],
      ["applicableEndTimeForEnergyRate", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "ApplicableEndTimeForEnergyRate")], [0, 1]],
      ["applicableStartTimeForDemandRate", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "ApplicableStartTimeForDemandRate")], [0, 1]],
      ["applicableEndTimeForDemandRate", ["SOAP::SOAPTime", XSD::QName.new(NsC_2019, "ApplicableEndTimeForDemandRate")], [0, 1]],
      ["energyCostRate", ["BuildingSync::EnergyCostRate", XSD::QName.new(NsC_2019, "EnergyCostRate")], [0, 1]],
      ["electricDemandRate", ["BuildingSync::ElectricDemandRate", XSD::QName.new(NsC_2019, "ElectricDemandRate")], [0, 1]],
      ["energyRateAdjustment", ["BuildingSync::EnergyRateAdjustment", XSD::QName.new(NsC_2019, "EnergyRateAdjustment")], [0, 1]],
      ["demandRateAdjustment", ["BuildingSync::DemandRateAdjustment", XSD::QName.new(NsC_2019, "DemandRateAdjustment")], [0, 1]],
      ["demandWindow", ["BuildingSync::DemandWindow", XSD::QName.new(NsC_2019, "DemandWindow")], [0, 1]],
      ["demandRatchetPercentage", ["BuildingSync::DemandRatchetPercentage", XSD::QName.new(NsC_2019, "DemandRatchetPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod::TimeOfUsePeriods,
    :schema_name => XSD::QName.new(NsC_2019, "TimeOfUsePeriods"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeOfUsePeriod", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod::TimeOfUsePeriods::TimeOfUsePeriod[]", XSD::QName.new(NsC_2019, "TimeOfUsePeriod")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriod"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriodName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RatePeriodName")], [0, 1]],
      ["applicableStartDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForEnergyRate")], [0, 1]],
      ["applicableEndDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForEnergyRate")], [0, 1]],
      ["applicableStartDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForDemandRate")], [0, 1]],
      ["applicableEndDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForDemandRate")], [0, 1]],
      ["timeOfUsePeriods", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod::TimeOfUsePeriods", XSD::QName.new(NsC_2019, "TimeOfUsePeriods")], [0, 1]],
      ["energySellRate", ["BuildingSync::EnergySellRate", XSD::QName.new(NsC_2019, "EnergySellRate")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriods"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriod", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods::RatePeriod[]", XSD::QName.new(NsC_2019, "RatePeriod")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate,
    :schema_name => XSD::QName.new(NsC_2019, "TimeOfUseRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriods", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate::RatePeriods", XSD::QName.new(NsC_2019, "RatePeriods")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::ConsumptionEnergyTierDesignation,
    :schema_name => XSD::QName.new(NsC_2019, "ConsumptionEnergyTierDesignation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::MaxkWhUsage,
    :schema_name => XSD::QName.new(NsC_2019, "MaxkWhUsage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::MaxkWUsage,
    :schema_name => XSD::QName.new(NsC_2019, "MaxkWUsage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier,
    :schema_name => XSD::QName.new(NsC_2019, "RateTier"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["consumptionEnergyTierDesignation", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::ConsumptionEnergyTierDesignation", XSD::QName.new(NsC_2019, "ConsumptionEnergyTierDesignation")], [0, 1]],
      ["maxkWhUsage", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::MaxkWhUsage", XSD::QName.new(NsC_2019, "MaxkWhUsage")], [0, 1]],
      ["maxkWUsage", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier::MaxkWUsage", XSD::QName.new(NsC_2019, "MaxkWUsage")], [0, 1]],
      ["energyCostRate", ["BuildingSync::EnergyCostRate", XSD::QName.new(NsC_2019, "EnergyCostRate")], [0, 1]],
      ["electricDemandRate", ["BuildingSync::ElectricDemandRate", XSD::QName.new(NsC_2019, "ElectricDemandRate")], [0, 1]],
      ["energyRateAdjustment", ["BuildingSync::EnergyRateAdjustment", XSD::QName.new(NsC_2019, "EnergyRateAdjustment")], [0, 1]],
      ["demandRateAdjustment", ["BuildingSync::DemandRateAdjustment", XSD::QName.new(NsC_2019, "DemandRateAdjustment")], [0, 1]],
      ["demandWindow", ["BuildingSync::DemandWindow", XSD::QName.new(NsC_2019, "DemandWindow")], [0, 1]],
      ["demandRatchetPercentage", ["BuildingSync::DemandRatchetPercentage", XSD::QName.new(NsC_2019, "DemandRatchetPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers,
    :schema_name => XSD::QName.new(NsC_2019, "RateTiers"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rateTier", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers::RateTier[]", XSD::QName.new(NsC_2019, "RateTier")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriod"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriodName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RatePeriodName")], [0, 1]],
      ["applicableStartDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForEnergyRate")], [0, 1]],
      ["applicableEndDateForEnergyRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForEnergyRate")], [0, 1]],
      ["applicableStartDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableStartDateForDemandRate")], [0, 1]],
      ["applicableEndDateForDemandRate", ["SOAP::SOAPGMonthDay", XSD::QName.new(NsC_2019, "ApplicableEndDateForDemandRate")], [0, 1]],
      ["rateTiers", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod::RateTiers", XSD::QName.new(NsC_2019, "RateTiers")], [0, 1]],
      ["energySellRate", ["BuildingSync::EnergySellRate", XSD::QName.new(NsC_2019, "EnergySellRate")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods,
    :schema_name => XSD::QName.new(NsC_2019, "RatePeriods"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriod", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods::RatePeriod[]", XSD::QName.new(NsC_2019, "RatePeriod")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate,
    :schema_name => XSD::QName.new(NsC_2019, "TieredRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratePeriods", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate::RatePeriods", XSD::QName.new(NsC_2019, "RatePeriods")], [0, 1]],
      ["tierDirection", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TierDirection")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates,
    :schema_name => XSD::QName.new(NsC_2019, "TieredRates"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tieredRate", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates::TieredRate[]", XSD::QName.new(NsC_2019, "TieredRate")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::RealTimePricing,
    :schema_name => XSD::QName.new(NsC_2019, "RealTimePricing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::VariablePeakPricing,
    :schema_name => XSD::QName.new(NsC_2019, "VariablePeakPricing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::CriticalPeakPricing,
    :schema_name => XSD::QName.new(NsC_2019, "CriticalPeakPricing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::CriticalPeakRebates,
    :schema_name => XSD::QName.new(NsC_2019, "CriticalPeakRebates"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure,
    :schema_name => XSD::QName.new(NsC_2019, "TypeOfRateStructure"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["flatRate", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::FlatRate", XSD::QName.new(NsC_2019, "FlatRate")], [0, 1]],
      ["timeOfUseRate", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TimeOfUseRate", XSD::QName.new(NsC_2019, "TimeOfUseRate")], [0, 1]],
      ["tieredRates", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::TieredRates", XSD::QName.new(NsC_2019, "TieredRates")], [0, 1]],
      ["realTimePricing", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::RealTimePricing", XSD::QName.new(NsC_2019, "RealTimePricing")], [0, 1]],
      ["variablePeakPricing", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::VariablePeakPricing", XSD::QName.new(NsC_2019, "VariablePeakPricing")], [0, 1]],
      ["criticalPeakPricing", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::CriticalPeakPricing", XSD::QName.new(NsC_2019, "CriticalPeakPricing")], [0, 1]],
      ["criticalPeakRebates", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure::CriticalPeakRebates", XSD::QName.new(NsC_2019, "CriticalPeakRebates")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::ReactivePowerCharge,
    :schema_name => XSD::QName.new(NsC_2019, "ReactivePowerCharge"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::MinimumPowerFactorWithoutPenalty,
    :schema_name => XSD::QName.new(NsC_2019, "MinimumPowerFactorWithoutPenalty"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::FixedMonthlyCharge,
    :schema_name => XSD::QName.new(NsC_2019, "FixedMonthlyCharge"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::NetMetering::AverageMarginalSellRate,
    :schema_name => XSD::QName.new(NsC_2019, "AverageMarginalSellRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::NetMetering,
    :schema_name => XSD::QName.new(NsC_2019, "NetMetering"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["averageMarginalSellRate", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::NetMetering::AverageMarginalSellRate", XSD::QName.new(NsC_2019, "AverageMarginalSellRate")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule::AverageMarginalCostRate,
    :schema_name => XSD::QName.new(NsC_2019, "AverageMarginalCostRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules::RateSchedule,
    :schema_name => XSD::QName.new(NsC_2019, "RateSchedule"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rateStructureName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RateStructureName")], [0, 1]],
      ["typeOfRateStructure", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::TypeOfRateStructure", XSD::QName.new(NsC_2019, "TypeOfRateStructure")], [0, 1]],
      ["rateStructureSector", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RateStructureSector")], [0, 1]],
      ["referenceForRateStructure", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReferenceForRateStructure")], [0, 1]],
      ["rateStructureEffectiveDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "RateStructureEffectiveDate")], [0, 1]],
      ["rateStructureEndDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "RateStructureEndDate")], [0, 1]],
      ["reactivePowerCharge", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::ReactivePowerCharge", XSD::QName.new(NsC_2019, "ReactivePowerCharge")], [0, 1]],
      ["minimumPowerFactorWithoutPenalty", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::MinimumPowerFactorWithoutPenalty", XSD::QName.new(NsC_2019, "MinimumPowerFactorWithoutPenalty")], [0, 1]],
      ["fixedMonthlyCharge", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::FixedMonthlyCharge", XSD::QName.new(NsC_2019, "FixedMonthlyCharge")], [0, 1]],
      ["netMetering", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::NetMetering", XSD::QName.new(NsC_2019, "NetMetering")], [0, 1]],
      ["averageMarginalCostRate", ["BuildingSync::UtilityType::RateSchedules::RateSchedule::AverageMarginalCostRate", XSD::QName.new(NsC_2019, "AverageMarginalCostRate")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityType::RateSchedules,
    :schema_name => XSD::QName.new(NsC_2019, "RateSchedules"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rateSchedule", ["BuildingSync::UtilityType::RateSchedules::RateSchedule[]", XSD::QName.new(NsC_2019, "RateSchedule")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::UtilityMeterNumbers,
    :schema_name => XSD::QName.new(NsC_2019, "UtilityMeterNumbers"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["utilityMeterNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "UtilityMeterNumber")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UtilityType::SourceSiteRatio,
    :schema_name => XSD::QName.new(NsC_2019, "SourceSiteRatio"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType,
    :schema_type => XSD::QName.new(NsC_2019, "ResourceUseType"),
    :schema_element => [
      ["energyResource", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "EnergyResource")], [0, 1]],
      ["resourceUseNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ResourceUseNotes")], [0, 1]],
      ["resourceBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ResourceBoundary")], [0, 1]],
      ["waterResource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterResource")], [0, 1]],
      ["resourceUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ResourceUnits")], [0, 1]],
      ["percentResource", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "PercentResource")], [0, 1]],
      ["sharedResourceSystem", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SharedResourceSystem")], [0, 1]],
      ["endUse", ["BuildingSync::EndUseType", XSD::QName.new(NsC_2019, "EndUse")], [0, 1]],
      ["percentEndUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "PercentEndUse")], [0, 1]],
      ["annualFuelUseNativeUnits", ["BuildingSync::ResourceUseType::AnnualFuelUseNativeUnits", XSD::QName.new(NsC_2019, "AnnualFuelUseNativeUnits")], [0, 1]],
      ["annualFuelUseConsistentUnits", ["BuildingSync::ResourceUseType::AnnualFuelUseConsistentUnits", XSD::QName.new(NsC_2019, "AnnualFuelUseConsistentUnits")], [0, 1]],
      ["annualFuelUseLinkedTimeSeriesIDs", ["BuildingSync::ResourceUseType::AnnualFuelUseLinkedTimeSeriesIDs", XSD::QName.new(NsC_2019, "AnnualFuelUseLinkedTimeSeriesIDs")], [0, 1]],
      ["peakResourceUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PeakResourceUnits")], [0, 1]],
      ["annualPeakNativeUnits", ["BuildingSync::ResourceUseType::AnnualPeakNativeUnits", XSD::QName.new(NsC_2019, "AnnualPeakNativeUnits")], [0, 1]],
      ["annualPeakConsistentUnits", ["BuildingSync::ResourceUseType::AnnualPeakConsistentUnits", XSD::QName.new(NsC_2019, "AnnualPeakConsistentUnits")], [0, 1]],
      ["annualFuelCost", ["BuildingSync::ResourceUseType::AnnualFuelCost", XSD::QName.new(NsC_2019, "AnnualFuelCost")], [0, 1]],
      ["fuelUseIntensity", ["BuildingSync::ResourceUseType::FuelUseIntensity", XSD::QName.new(NsC_2019, "FuelUseIntensity")], [0, 1]],
      ["utilityIDs", ["BuildingSync::ResourceUseType::UtilityIDs", XSD::QName.new(NsC_2019, "UtilityIDs")], [0, 1]],
      ["emissions", ["BuildingSync::ResourceUseType::Emissions", XSD::QName.new(NsC_2019, "Emissions")], [0, 1]],
      ["meterID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MeterID")], [0, 1]],
      ["parentResourceUseID", ["BuildingSync::ResourceUseType::ParentResourceUseID", XSD::QName.new(NsC_2019, "ParentResourceUseID")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualFuelUseNativeUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualFuelUseNativeUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualFuelUseConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualFuelUseConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualFuelUseLinkedTimeSeriesIDs::LinkedTimeSeriesID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedTimeSeriesID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualFuelUseLinkedTimeSeriesIDs,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualFuelUseLinkedTimeSeriesIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedTimeSeriesID", ["BuildingSync::ResourceUseType::AnnualFuelUseLinkedTimeSeriesIDs::LinkedTimeSeriesID[]", XSD::QName.new(NsC_2019, "LinkedTimeSeriesID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualPeakNativeUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualPeakNativeUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualPeakConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualPeakConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::AnnualFuelCost,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualFuelCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::FuelUseIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "FuelUseIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::UtilityIDs::UtilityID,
    :schema_name => XSD::QName.new(NsC_2019, "UtilityID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::UtilityIDs,
    :schema_name => XSD::QName.new(NsC_2019, "UtilityIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["utilityID", ["BuildingSync::ResourceUseType::UtilityIDs::UtilityID[]", XSD::QName.new(NsC_2019, "UtilityID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::EmissionsFactor,
    :schema_name => XSD::QName.new(NsC_2019, "EmissionsFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::GHGEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "GHGEmissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::GHGEmissionIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "GHGEmissionIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::AvoidedEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "AvoidedEmissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::EmissionsLinkedTimeSeriesIDs::EmissionsLinkedTimeSeriesID,
    :schema_name => XSD::QName.new(NsC_2019, "EmissionsLinkedTimeSeriesID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission::EmissionsLinkedTimeSeriesIDs,
    :schema_name => XSD::QName.new(NsC_2019, "EmissionsLinkedTimeSeriesIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["emissionsLinkedTimeSeriesID", ["BuildingSync::ResourceUseType::Emissions::Emission::EmissionsLinkedTimeSeriesIDs::EmissionsLinkedTimeSeriesID[]", XSD::QName.new(NsC_2019, "EmissionsLinkedTimeSeriesID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions::Emission,
    :schema_name => XSD::QName.new(NsC_2019, "Emission"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["emissionBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EmissionBoundary")], [0, 1]],
      ["emissionsType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EmissionsType")], [0, 1]],
      ["emissionsFactor", ["BuildingSync::ResourceUseType::Emissions::Emission::EmissionsFactor", XSD::QName.new(NsC_2019, "EmissionsFactor")], [0, 1]],
      ["emissionsFactorSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EmissionsFactorSource")], [0, 1]],
      ["gHGEmissions", ["BuildingSync::ResourceUseType::Emissions::Emission::GHGEmissions", XSD::QName.new(NsC_2019, "GHGEmissions")], [0, 1]],
      ["gHGEmissionIntensity", ["BuildingSync::ResourceUseType::Emissions::Emission::GHGEmissionIntensity", XSD::QName.new(NsC_2019, "GHGEmissionIntensity")], [0, 1]],
      ["avoidedEmissions", ["BuildingSync::ResourceUseType::Emissions::Emission::AvoidedEmissions", XSD::QName.new(NsC_2019, "AvoidedEmissions")], [0, 1]],
      ["emissionsLinkedTimeSeriesIDs", ["BuildingSync::ResourceUseType::Emissions::Emission::EmissionsLinkedTimeSeriesIDs", XSD::QName.new(NsC_2019, "EmissionsLinkedTimeSeriesIDs")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::Emissions,
    :schema_name => XSD::QName.new(NsC_2019, "Emissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["emission", ["BuildingSync::ResourceUseType::Emissions::Emission[]", XSD::QName.new(NsC_2019, "Emission")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ResourceUseType::ParentResourceUseID,
    :schema_name => XSD::QName.new(NsC_2019, "ParentResourceUseID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType,
    :schema_type => XSD::QName.new(NsC_2019, "AllResourceTotalType"),
    :schema_element => [
      ["endUse", ["BuildingSync::EndUseType", XSD::QName.new(NsC_2019, "EndUse")], [0, 1]],
      ["temporalStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TemporalStatus")], [0, 1]],
      ["resourceBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ResourceBoundary")], [0, 1]],
      ["siteEnergyUse", ["BuildingSync::AllResourceTotalType::SiteEnergyUse", XSD::QName.new(NsC_2019, "SiteEnergyUse")], [0, 1]],
      ["siteEnergyUseIntensity", ["BuildingSync::AllResourceTotalType::SiteEnergyUseIntensity", XSD::QName.new(NsC_2019, "SiteEnergyUseIntensity")], [0, 1]],
      ["sourceEnergyUse", ["BuildingSync::AllResourceTotalType::SourceEnergyUse", XSD::QName.new(NsC_2019, "SourceEnergyUse")], [0, 1]],
      ["sourceEnergyUseIntensity", ["BuildingSync::SourceEnergyUseIntensity", XSD::QName.new(NsC_2019, "SourceEnergyUseIntensity")], [0, 1]],
      ["buildingEnergyUse", ["BuildingSync::AllResourceTotalType::BuildingEnergyUse", XSD::QName.new(NsC_2019, "BuildingEnergyUse")], [0, 1]],
      ["buildingEnergyUseIntensity", ["BuildingSync::AllResourceTotalType::BuildingEnergyUseIntensity", XSD::QName.new(NsC_2019, "BuildingEnergyUseIntensity")], [0, 1]],
      ["importedEnergyConsistentUnits", ["BuildingSync::AllResourceTotalType::ImportedEnergyConsistentUnits", XSD::QName.new(NsC_2019, "ImportedEnergyConsistentUnits")], [0, 1]],
      ["onsiteEnergyProductionConsistentUnits", ["BuildingSync::AllResourceTotalType::OnsiteEnergyProductionConsistentUnits", XSD::QName.new(NsC_2019, "OnsiteEnergyProductionConsistentUnits")], [0, 1]],
      ["exportedEnergyConsistentUnits", ["BuildingSync::AllResourceTotalType::ExportedEnergyConsistentUnits", XSD::QName.new(NsC_2019, "ExportedEnergyConsistentUnits")], [0, 1]],
      ["netIncreaseInStoredEnergyConsistentUnits", ["BuildingSync::AllResourceTotalType::NetIncreaseInStoredEnergyConsistentUnits", XSD::QName.new(NsC_2019, "NetIncreaseInStoredEnergyConsistentUnits")], [0, 1]],
      ["energyCost", ["BuildingSync::AllResourceTotalType::EnergyCost", XSD::QName.new(NsC_2019, "EnergyCost")], [0, 1]],
      ["energyCostIndex", ["BuildingSync::AllResourceTotalType::EnergyCostIndex", XSD::QName.new(NsC_2019, "EnergyCostIndex")], [0, 1]],
      ["onsiteRenewableSystemElectricityExported", ["BuildingSync::AllResourceTotalType::OnsiteRenewableSystemElectricityExported", XSD::QName.new(NsC_2019, "OnsiteRenewableSystemElectricityExported")], [0, 1]],
      ["electricitySourcedFromOnsiteRenewableSystems", ["BuildingSync::AllResourceTotalType::ElectricitySourcedFromOnsiteRenewableSystems", XSD::QName.new(NsC_2019, "ElectricitySourcedFromOnsiteRenewableSystems")], [0, 1]],
      ["summerPeak", ["BuildingSync::AllResourceTotalType::SummerPeak", XSD::QName.new(NsC_2019, "SummerPeak")], [0, 1]],
      ["winterPeak", ["BuildingSync::AllResourceTotalType::WinterPeak", XSD::QName.new(NsC_2019, "WinterPeak")], [0, 1]],
      ["waterResource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterResource")], [0, 1]],
      ["waterUse", ["BuildingSync::AllResourceTotalType::WaterUse", XSD::QName.new(NsC_2019, "WaterUse")], [0, 1]],
      ["waterIntensity", ["BuildingSync::AllResourceTotalType::WaterIntensity", XSD::QName.new(NsC_2019, "WaterIntensity")], [0, 1]],
      ["waterCost", ["BuildingSync::AllResourceTotalType::WaterCost", XSD::QName.new(NsC_2019, "WaterCost")], [0, 1]],
      ["wasteWaterVolume", ["BuildingSync::AllResourceTotalType::WasteWaterVolume", XSD::QName.new(NsC_2019, "WasteWaterVolume")], [0, 1]],
      ["annualAverageGHGEmissions", ["BuildingSync::AllResourceTotalType::AnnualAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualAverageGHGEmissions")], [0, 1]],
      ["annualMarginalGHGEmissions", ["BuildingSync::AllResourceTotalType::AnnualMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualMarginalGHGEmissions")], [0, 1]],
      ["annualGHGEmissionIntensity", ["BuildingSync::AllResourceTotalType::AnnualGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualGHGEmissionIntensity")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::SiteEnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "SiteEnergyUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::SiteEnergyUseIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "SiteEnergyUseIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::SourceEnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "SourceEnergyUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::BuildingEnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingEnergyUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::BuildingEnergyUseIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingEnergyUseIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::ImportedEnergyConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "ImportedEnergyConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::OnsiteEnergyProductionConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "OnsiteEnergyProductionConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::ExportedEnergyConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "ExportedEnergyConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::NetIncreaseInStoredEnergyConsistentUnits,
    :schema_name => XSD::QName.new(NsC_2019, "NetIncreaseInStoredEnergyConsistentUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::EnergyCost,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::EnergyCostIndex,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyCostIndex"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::OnsiteRenewableSystemElectricityExported,
    :schema_name => XSD::QName.new(NsC_2019, "OnsiteRenewableSystemElectricityExported"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::ElectricitySourcedFromOnsiteRenewableSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ElectricitySourcedFromOnsiteRenewableSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::SummerPeak,
    :schema_name => XSD::QName.new(NsC_2019, "SummerPeak"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::WinterPeak,
    :schema_name => XSD::QName.new(NsC_2019, "WinterPeak"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::WaterUse,
    :schema_name => XSD::QName.new(NsC_2019, "WaterUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::WaterIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "WaterIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::WaterCost,
    :schema_name => XSD::QName.new(NsC_2019, "WaterCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::WasteWaterVolume,
    :schema_name => XSD::QName.new(NsC_2019, "WasteWaterVolume"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::AnnualAverageGHGEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualAverageGHGEmissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::AnnualMarginalGHGEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualMarginalGHGEmissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AllResourceTotalType::AnnualGHGEmissionIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualGHGEmissionIntensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType,
    :schema_type => XSD::QName.new(NsC_2019, "TimeSeriesType"),
    :schema_element => [
      ["readingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReadingType")], [0, 1]],
      ["peakType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PeakType")], [0, 1]],
      ["timeSeriesReadingQuantity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TimeSeriesReadingQuantity")], [0, 1]],
      ["startTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "StartTimestamp")], [0, 1]],
      ["endTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "EndTimestamp")], [0, 1]],
      ["intervalDuration", ["SOAP::SOAPInteger", XSD::QName.new(NsC_2019, "IntervalDuration")], [0, 1]],
      ["intervalDurationUnits", ["BuildingSync::IntervalFrequencyType", XSD::QName.new(NsC_2019, "IntervalDurationUnits")], [0, 1]],
      ["intervalFrequency", ["BuildingSync::IntervalFrequencyType", XSD::QName.new(NsC_2019, "IntervalFrequency")], [0, 1]],
      ["intervalReading", ["BuildingSync::TimeSeriesType::IntervalReading", XSD::QName.new(NsC_2019, "IntervalReading")], [0, 1]],
      ["phase", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Phase")], [0, 1]],
      ["energyFlowDirection", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EnergyFlowDirection")], [0, 1]],
      ["heatingDegreeDays", ["BuildingSync::TimeSeriesType::HeatingDegreeDays", XSD::QName.new(NsC_2019, "HeatingDegreeDays")], [0, 1]],
      ["coolingDegreeDays", ["BuildingSync::TimeSeriesType::CoolingDegreeDays", XSD::QName.new(NsC_2019, "CoolingDegreeDays")], [0, 1]],
      ["hDDBaseTemperature", ["BuildingSync::HDDBaseTemperature", XSD::QName.new(NsC_2019, "HDDBaseTemperature")], [0, 1]],
      ["cDDBaseTemperature", ["BuildingSync::CDDBaseTemperature", XSD::QName.new(NsC_2019, "CDDBaseTemperature")], [0, 1]],
      ["resourceUseID", ["BuildingSync::TimeSeriesType::ResourceUseID", XSD::QName.new(NsC_2019, "ResourceUseID")], [0, 1]],
      ["weatherStationID", ["BuildingSync::TimeSeriesType::WeatherStationID", XSD::QName.new(NsC_2019, "WeatherStationID")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::IntervalReading,
    :schema_name => XSD::QName.new(NsC_2019, "IntervalReading"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::HeatingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::CoolingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::ResourceUseID,
    :schema_name => XSD::QName.new(NsC_2019, "ResourceUseID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::WeatherStationID,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStationID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType,
    :schema_type => XSD::QName.new(NsC_2019, "MeasureType"),
    :schema_element => [
      ["typeOfMeasure", ["BuildingSync::MeasureType::TypeOfMeasure", XSD::QName.new(NsC_2019, "TypeOfMeasure")], [0, 1]],
      ["systemCategoryAffected", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SystemCategoryAffected")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["technologyCategories", ["BuildingSync::MeasureType::TechnologyCategories", XSD::QName.new(NsC_2019, "TechnologyCategories")], [0, 1]],
      ["measureScaleOfApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MeasureScaleOfApplication")], [0, 1]],
      ["customMeasureName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CustomMeasureName")], [0, 1]],
      ["longDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LongDescription")], [0, 1]],
      ["measureSavingsAnalysis", ["BuildingSync::MeasureSavingsAnalysis", XSD::QName.new(NsC_2019, "MeasureSavingsAnalysis")], [0, 1]],
      ["mVCost", ["BuildingSync::MVCost", XSD::QName.new(NsC_2019, "MVCost")], [0, 1]],
      ["mVOption", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MVOption")], [0, 1]],
      ["usefulLife", ["BuildingSync::MeasureType::UsefulLife", XSD::QName.new(NsC_2019, "UsefulLife")], [0, 1]],
      ["measureTotalFirstCost", ["BuildingSync::MeasureType::MeasureTotalFirstCost", XSD::QName.new(NsC_2019, "MeasureTotalFirstCost")], [0, 1]],
      ["measureInstallationCost", ["BuildingSync::MeasureType::MeasureInstallationCost", XSD::QName.new(NsC_2019, "MeasureInstallationCost")], [0, 1]],
      ["measureMaterialCost", ["BuildingSync::MeasureType::MeasureMaterialCost", XSD::QName.new(NsC_2019, "MeasureMaterialCost")], [0, 1]],
      ["capitalReplacementCost", ["BuildingSync::MeasureType::CapitalReplacementCost", XSD::QName.new(NsC_2019, "CapitalReplacementCost")], [0, 1]],
      ["residualValue", ["BuildingSync::MeasureType::ResidualValue", XSD::QName.new(NsC_2019, "ResidualValue")], [0, 1]],
      ["recommended", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "Recommended")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "StartDate")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "EndDate")], [0, 1]],
      ["implementationStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ImplementationStatus")], [0, 1]],
      ["discardReason", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DiscardReason")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement::ExistingSystemReplaced,
    :schema_name => XSD::QName.new(NsC_2019, "ExistingSystemReplaced"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement::AlternativeSystemReplacement,
    :schema_name => XSD::QName.new(NsC_2019, "AlternativeSystemReplacement"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement,
    :schema_name => XSD::QName.new(NsC_2019, "Replacement"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["existingSystemReplaced", ["BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement::ExistingSystemReplaced[]", XSD::QName.new(NsC_2019, "ExistingSystemReplaced")], [0, nil]],
      ["alternativeSystemReplacement", ["BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement::AlternativeSystemReplacement[]", XSD::QName.new(NsC_2019, "AlternativeSystemReplacement")], [0, nil]],
      ["existingScheduleAffected", ["BuildingSync::ExistingScheduleAffected[]", XSD::QName.new(NsC_2019, "ExistingScheduleAffected")], [0, nil]],
      ["modifiedSchedule", ["BuildingSync::ModifiedSchedule[]", XSD::QName.new(NsC_2019, "ModifiedSchedule")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Replacements,
    :schema_name => XSD::QName.new(NsC_2019, "Replacements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["replacement", ["BuildingSync::MeasureType::TypeOfMeasure::Replacements::Replacement", XSD::QName.new(NsC_2019, "Replacement")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning::ExistingSystemAffected,
    :schema_name => XSD::QName.new(NsC_2019, "ExistingSystemAffected"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning::ModifiedSystem,
    :schema_name => XSD::QName.new(NsC_2019, "ModifiedSystem"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning,
    :schema_name => XSD::QName.new(NsC_2019, "ModificationRetrocommissioning"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["existingSystemAffected", ["BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning::ExistingSystemAffected[]", XSD::QName.new(NsC_2019, "ExistingSystemAffected")], [0, nil]],
      ["modifiedSystem", ["BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning::ModifiedSystem[]", XSD::QName.new(NsC_2019, "ModifiedSystem")], [0, nil]],
      ["existingScheduleAffected", ["BuildingSync::ExistingScheduleAffected[]", XSD::QName.new(NsC_2019, "ExistingScheduleAffected")], [0, nil]],
      ["modifiedSchedule", ["BuildingSync::ModifiedSchedule[]", XSD::QName.new(NsC_2019, "ModifiedSchedule")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions,
    :schema_name => XSD::QName.new(NsC_2019, "ModificationRetrocommissions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["modificationRetrocommissioning", ["BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions::ModificationRetrocommissioning", XSD::QName.new(NsC_2019, "ModificationRetrocommissioning")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Additions::Addition::AlternativeSystemAdded,
    :schema_name => XSD::QName.new(NsC_2019, "AlternativeSystemAdded"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Additions::Addition,
    :schema_name => XSD::QName.new(NsC_2019, "Addition"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["alternativeSystemAdded", ["BuildingSync::MeasureType::TypeOfMeasure::Additions::Addition::AlternativeSystemAdded[]", XSD::QName.new(NsC_2019, "AlternativeSystemAdded")], [0, nil]],
      ["existingScheduleAffected", ["BuildingSync::ExistingScheduleAffected[]", XSD::QName.new(NsC_2019, "ExistingScheduleAffected")], [0, nil]],
      ["modifiedSchedule", ["BuildingSync::ModifiedSchedule[]", XSD::QName.new(NsC_2019, "ModifiedSchedule")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Additions,
    :schema_name => XSD::QName.new(NsC_2019, "Additions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["addition", ["BuildingSync::MeasureType::TypeOfMeasure::Additions::Addition", XSD::QName.new(NsC_2019, "Addition")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Removals::Removal::ExistingSystemRemoved,
    :schema_name => XSD::QName.new(NsC_2019, "ExistingSystemRemoved"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Removals::Removal,
    :schema_name => XSD::QName.new(NsC_2019, "Removal"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["existingSystemRemoved", ["BuildingSync::MeasureType::TypeOfMeasure::Removals::Removal::ExistingSystemRemoved[]", XSD::QName.new(NsC_2019, "ExistingSystemRemoved")], [0, nil]],
      ["existingScheduleAffected", ["BuildingSync::ExistingScheduleAffected[]", XSD::QName.new(NsC_2019, "ExistingScheduleAffected")], [0, nil]],
      ["modifiedSchedule", ["BuildingSync::ModifiedSchedule[]", XSD::QName.new(NsC_2019, "ModifiedSchedule")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure::Removals,
    :schema_name => XSD::QName.new(NsC_2019, "Removals"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["removal", ["BuildingSync::MeasureType::TypeOfMeasure::Removals::Removal", XSD::QName.new(NsC_2019, "Removal")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TypeOfMeasure,
    :schema_name => XSD::QName.new(NsC_2019, "TypeOfMeasure"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["replacements", ["BuildingSync::MeasureType::TypeOfMeasure::Replacements", XSD::QName.new(NsC_2019, "Replacements")], [0, 1]],
      ["modificationRetrocommissions", ["BuildingSync::MeasureType::TypeOfMeasure::ModificationRetrocommissions", XSD::QName.new(NsC_2019, "ModificationRetrocommissions")], [0, 1]],
      ["additions", ["BuildingSync::MeasureType::TypeOfMeasure::Additions", XSD::QName.new(NsC_2019, "Additions")], [0, 1]],
      ["removals", ["BuildingSync::MeasureType::TypeOfMeasure::Removals", XSD::QName.new(NsC_2019, "Removals")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BoilerPlantImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerPlantImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ChillerPlantImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "ChillerPlantImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BuildingAutomationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingAutomationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::OtherHVAC,
    :schema_name => XSD::QName.new(NsC_2019, "OtherHVAC"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::LightingImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "LightingImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BuildingEnvelopeModifications,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingEnvelopeModifications"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ChilledWaterHotWaterAndSteamDistributionSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ChilledWaterHotWaterAndSteamDistributionSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ConveyanceSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ConveyanceSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::OtherElectricMotorsAndDrives,
    :schema_name => XSD::QName.new(NsC_2019, "OtherElectricMotorsAndDrives"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::Refrigeration,
    :schema_name => XSD::QName.new(NsC_2019, "Refrigeration"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::DistributedGeneration,
    :schema_name => XSD::QName.new(NsC_2019, "DistributedGeneration"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::RenewableEnergySystems,
    :schema_name => XSD::QName.new(NsC_2019, "RenewableEnergySystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyDistributionSystems,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyDistributionSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ServiceHotWaterSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ServiceHotWaterSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::WaterAndSewerConservationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "WaterAndSewerConservationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ElectricalPeakShavingLoadShifting,
    :schema_name => XSD::QName.new(NsC_2019, "ElectricalPeakShavingLoadShifting"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyCostReductionThroughRateAdjustments,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyCostReductionThroughRateAdjustments"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyRelatedProcessImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyRelatedProcessImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::AdvancedMeteringSystems,
    :schema_name => XSD::QName.new(NsC_2019, "AdvancedMeteringSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::PlugLoadReductions,
    :schema_name => XSD::QName.new(NsC_2019, "PlugLoadReductions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::DataCenterImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "DataCenterImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::AlternativeWaterSources,
    :schema_name => XSD::QName.new(NsC_2019, "AlternativeWaterSources"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::KitchenImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "KitchenImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::LaboratoryAndMedicalEquipments,
    :schema_name => XSD::QName.new(NsC_2019, "LaboratoryAndMedicalEquipments"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::IrrigationSystemsAndLandscapingImprovements,
    :schema_name => XSD::QName.new(NsC_2019, "IrrigationSystemsAndLandscapingImprovements"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::WashingEquipmentsAndTechiques,
    :schema_name => XSD::QName.new(NsC_2019, "WashingEquipmentsAndTechiques"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::FutureOtherECMs,
    :schema_name => XSD::QName.new(NsC_2019, "FutureOtherECMs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::HealthAndSafety,
    :schema_name => XSD::QName.new(NsC_2019, "HealthAndSafety"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::Uncategorized,
    :schema_name => XSD::QName.new(NsC_2019, "Uncategorized"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measureName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "MeasureName")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory,
    :schema_name => XSD::QName.new(NsC_2019, "TechnologyCategory"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["boilerPlantImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BoilerPlantImprovements", XSD::QName.new(NsC_2019, "BoilerPlantImprovements")], [0, 1]],
      ["chillerPlantImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ChillerPlantImprovements", XSD::QName.new(NsC_2019, "ChillerPlantImprovements")], [0, 1]],
      ["buildingAutomationSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BuildingAutomationSystems", XSD::QName.new(NsC_2019, "BuildingAutomationSystems")], [0, 1]],
      ["otherHVAC", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::OtherHVAC", XSD::QName.new(NsC_2019, "OtherHVAC")], [0, 1]],
      ["lightingImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::LightingImprovements", XSD::QName.new(NsC_2019, "LightingImprovements")], [0, 1]],
      ["buildingEnvelopeModifications", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::BuildingEnvelopeModifications", XSD::QName.new(NsC_2019, "BuildingEnvelopeModifications")], [0, 1]],
      ["chilledWaterHotWaterAndSteamDistributionSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ChilledWaterHotWaterAndSteamDistributionSystems", XSD::QName.new(NsC_2019, "ChilledWaterHotWaterAndSteamDistributionSystems")], [0, 1]],
      ["conveyanceSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ConveyanceSystems", XSD::QName.new(NsC_2019, "ConveyanceSystems")], [0, 1]],
      ["otherElectricMotorsAndDrives", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::OtherElectricMotorsAndDrives", XSD::QName.new(NsC_2019, "OtherElectricMotorsAndDrives")], [0, 1]],
      ["refrigeration", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::Refrigeration", XSD::QName.new(NsC_2019, "Refrigeration")], [0, 1]],
      ["distributedGeneration", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::DistributedGeneration", XSD::QName.new(NsC_2019, "DistributedGeneration")], [0, 1]],
      ["renewableEnergySystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::RenewableEnergySystems", XSD::QName.new(NsC_2019, "RenewableEnergySystems")], [0, 1]],
      ["energyDistributionSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyDistributionSystems", XSD::QName.new(NsC_2019, "EnergyDistributionSystems")], [0, 1]],
      ["serviceHotWaterSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ServiceHotWaterSystems", XSD::QName.new(NsC_2019, "ServiceHotWaterSystems")], [0, 1]],
      ["waterAndSewerConservationSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::WaterAndSewerConservationSystems", XSD::QName.new(NsC_2019, "WaterAndSewerConservationSystems")], [0, 1]],
      ["electricalPeakShavingLoadShifting", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::ElectricalPeakShavingLoadShifting", XSD::QName.new(NsC_2019, "ElectricalPeakShavingLoadShifting")], [0, 1]],
      ["energyCostReductionThroughRateAdjustments", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyCostReductionThroughRateAdjustments", XSD::QName.new(NsC_2019, "EnergyCostReductionThroughRateAdjustments")], [0, 1]],
      ["energyRelatedProcessImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::EnergyRelatedProcessImprovements", XSD::QName.new(NsC_2019, "EnergyRelatedProcessImprovements")], [0, 1]],
      ["advancedMeteringSystems", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::AdvancedMeteringSystems", XSD::QName.new(NsC_2019, "AdvancedMeteringSystems")], [0, 1]],
      ["plugLoadReductions", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::PlugLoadReductions", XSD::QName.new(NsC_2019, "PlugLoadReductions")], [0, 1]],
      ["dataCenterImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::DataCenterImprovements", XSD::QName.new(NsC_2019, "DataCenterImprovements")], [0, 1]],
      ["alternativeWaterSources", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::AlternativeWaterSources", XSD::QName.new(NsC_2019, "AlternativeWaterSources")], [0, 1]],
      ["kitchenImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::KitchenImprovements", XSD::QName.new(NsC_2019, "KitchenImprovements")], [0, 1]],
      ["laboratoryAndMedicalEquipments", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::LaboratoryAndMedicalEquipments", XSD::QName.new(NsC_2019, "LaboratoryAndMedicalEquipments")], [0, 1]],
      ["irrigationSystemsAndLandscapingImprovements", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::IrrigationSystemsAndLandscapingImprovements", XSD::QName.new(NsC_2019, "IrrigationSystemsAndLandscapingImprovements")], [0, 1]],
      ["washingEquipmentsAndTechiques", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::WashingEquipmentsAndTechiques", XSD::QName.new(NsC_2019, "WashingEquipmentsAndTechiques")], [0, 1]],
      ["futureOtherECMs", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::FutureOtherECMs", XSD::QName.new(NsC_2019, "FutureOtherECMs")], [0, 1]],
      ["healthAndSafety", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::HealthAndSafety", XSD::QName.new(NsC_2019, "HealthAndSafety")], [0, 1]],
      ["uncategorized", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory::Uncategorized", XSD::QName.new(NsC_2019, "Uncategorized")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::TechnologyCategories,
    :schema_name => XSD::QName.new(NsC_2019, "TechnologyCategories"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["technologyCategory", ["BuildingSync::MeasureType::TechnologyCategories::TechnologyCategory[]", XSD::QName.new(NsC_2019, "TechnologyCategory")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureType::UsefulLife,
    :schema_name => XSD::QName.new(NsC_2019, "UsefulLife"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::MeasureTotalFirstCost,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureTotalFirstCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::MeasureInstallationCost,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureInstallationCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::MeasureMaterialCost,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureMaterialCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::CapitalReplacementCost,
    :schema_name => XSD::QName.new(NsC_2019, "CapitalReplacementCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureType::ResidualValue,
    :schema_name => XSD::QName.new(NsC_2019, "ResidualValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType,
    :schema_type => XSD::QName.new(NsC_2019, "ReportType"),
    :schema_element => [
      ["scenarios", ["BuildingSync::ReportType::Scenarios", XSD::QName.new(NsC_2019, "Scenarios")], [0, 1]],
      ["auditDates", ["BuildingSync::ReportType::AuditDates", XSD::QName.new(NsC_2019, "AuditDates")], [0, 1]],
      ["auditFilingStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AuditFilingStatus")], [0, 1]],
      ["earlyCompliance", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "EarlyCompliance")], [0, 1]],
      ["aSHRAEAuditLevel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ASHRAEAuditLevel")], [0, 1]],
      ["facilityEvaluationAuditDefinition", ["BuildingSync::ReportType::FacilityEvaluationAuditDefinition", XSD::QName.new(NsC_2019, "FacilityEvaluationAuditDefinition")], [0, 1]],
      ["retrocommissioningAudit", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "RetrocommissioningAudit")], [0, 1]],
      ["auditCost", ["BuildingSync::ReportType::AuditCost", XSD::QName.new(NsC_2019, "AuditCost")], [0, 1]],
      ["discountFactor", ["BuildingSync::ReportType::DiscountFactor", XSD::QName.new(NsC_2019, "DiscountFactor")], [0, 1]],
      ["discountRate", ["BuildingSync::ReportType::DiscountRate", XSD::QName.new(NsC_2019, "DiscountRate")], [0, 1]],
      ["analysisPeriod", ["BuildingSync::ReportType::AnalysisPeriod", XSD::QName.new(NsC_2019, "AnalysisPeriod")], [0, 1]],
      ["gasPriceEscalationRate", ["BuildingSync::ReportType::GasPriceEscalationRate", XSD::QName.new(NsC_2019, "GasPriceEscalationRate")], [0, 1]],
      ["electricityPriceEscalationRate", ["BuildingSync::ReportType::ElectricityPriceEscalationRate", XSD::QName.new(NsC_2019, "ElectricityPriceEscalationRate")], [0, 1]],
      ["waterPriceEscalationRate", ["BuildingSync::ReportType::WaterPriceEscalationRate", XSD::QName.new(NsC_2019, "WaterPriceEscalationRate")], [0, 1]],
      ["otherEscalationRates", ["BuildingSync::ReportType::OtherEscalationRates", XSD::QName.new(NsC_2019, "OtherEscalationRates")], [0, 1]],
      ["inflationRate", ["BuildingSync::ReportType::InflationRate", XSD::QName.new(NsC_2019, "InflationRate")], [0, 1]],
      ["qualifications", ["BuildingSync::ReportType::Qualifications", XSD::QName.new(NsC_2019, "Qualifications")], [0, 1]],
      ["auditExemption", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AuditExemption")], [0, 1]],
      ["utilities", ["BuildingSync::ReportType::Utilities", XSD::QName.new(NsC_2019, "Utilities")], [0, 1]],
      ["auditorContactID", ["BuildingSync::ReportType::AuditorContactID", XSD::QName.new(NsC_2019, "AuditorContactID")], [0, 1]],
      ["linkedPremisesOrSystem", ["BuildingSync::LinkedPremisesOrSystem", XSD::QName.new(NsC_2019, "LinkedPremisesOrSystem")], [0, 1]],
      ["linkedAuditCycles", ["BuildingSync::LinkedAuditCycles", XSD::QName.new(NsC_2019, "LinkedAuditCycles")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::Scenarios,
    :schema_name => XSD::QName.new(NsC_2019, "Scenarios"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["scenario", ["BuildingSync::ScenarioType[]", XSD::QName.new(NsC_2019, "Scenario")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::AuditDates::AuditDate,
    :schema_name => XSD::QName.new(NsC_2019, "AuditDate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["date", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "Date")]],
      ["dateType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DateType")]],
      ["customDateType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CustomDateType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::AuditDates,
    :schema_name => XSD::QName.new(NsC_2019, "AuditDates"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["auditDate", ["BuildingSync::ReportType::AuditDates::AuditDate[]", XSD::QName.new(NsC_2019, "AuditDate")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::FacilityEvaluationAuditDefinition,
    :schema_name => XSD::QName.new(NsC_2019, "FacilityEvaluationAuditDefinition"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["basicOnsiteAudit", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BasicOnsiteAudit")]],
      ["detailedOnsiteAudit", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DetailedOnsiteAudit")]],
      ["basicRemoteAudit", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BasicRemoteAudit")]],
      ["detailedRemoteAudit", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DetailedRemoteAudit")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::AuditCost,
    :schema_name => XSD::QName.new(NsC_2019, "AuditCost"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::DiscountFactor,
    :schema_name => XSD::QName.new(NsC_2019, "DiscountFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::DiscountRate,
    :schema_name => XSD::QName.new(NsC_2019, "DiscountRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::AnalysisPeriod,
    :schema_name => XSD::QName.new(NsC_2019, "AnalysisPeriod"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::GasPriceEscalationRate,
    :schema_name => XSD::QName.new(NsC_2019, "GasPriceEscalationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::ElectricityPriceEscalationRate,
    :schema_name => XSD::QName.new(NsC_2019, "ElectricityPriceEscalationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::WaterPriceEscalationRate,
    :schema_name => XSD::QName.new(NsC_2019, "WaterPriceEscalationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::OtherEscalationRates::OtherEscalationRate,
    :schema_name => XSD::QName.new(NsC_2019, "OtherEscalationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyResource", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "EnergyResource")], [0, 1]],
      ["escalationRate", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "EscalationRate")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::OtherEscalationRates,
    :schema_name => XSD::QName.new(NsC_2019, "OtherEscalationRates"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["otherEscalationRate", ["BuildingSync::ReportType::OtherEscalationRates::OtherEscalationRate[]", XSD::QName.new(NsC_2019, "OtherEscalationRate")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::InflationRate,
    :schema_name => XSD::QName.new(NsC_2019, "InflationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::Qualifications::Qualification::CertifiedAuditTeamMemberContactID,
    :schema_name => XSD::QName.new(NsC_2019, "CertifiedAuditTeamMemberContactID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::Qualifications::Qualification::AuditorYearsOfExperience,
    :schema_name => XSD::QName.new(NsC_2019, "AuditorYearsOfExperience"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::Qualifications::Qualification,
    :schema_name => XSD::QName.new(NsC_2019, "Qualification"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["auditorQualification", ["BuildingSync::AuditorQualificationType", XSD::QName.new(NsC_2019, "AuditorQualification")], [0, 1]],
      ["auditorQualificationNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AuditorQualificationNumber")], [0, 1]],
      ["auditorQualificationState", ["BuildingSync::State", XSD::QName.new(NsC_2019, "AuditorQualificationState")], [0, 1]],
      ["certificationExpirationDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "CertificationExpirationDate")], [0, 1]],
      ["certifiedAuditTeamMemberContactID", ["BuildingSync::ReportType::Qualifications::Qualification::CertifiedAuditTeamMemberContactID", XSD::QName.new(NsC_2019, "CertifiedAuditTeamMemberContactID")], [0, 1]],
      ["auditTeamMemberCertificationType", ["BuildingSync::AuditorQualificationType", XSD::QName.new(NsC_2019, "AuditTeamMemberCertificationType")], [0, 1]],
      ["auditorYearsOfExperience", ["BuildingSync::ReportType::Qualifications::Qualification::AuditorYearsOfExperience", XSD::QName.new(NsC_2019, "AuditorYearsOfExperience")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::ReportType::Qualifications,
    :schema_name => XSD::QName.new(NsC_2019, "Qualifications"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["qualification", ["BuildingSync::ReportType::Qualifications::Qualification[]", XSD::QName.new(NsC_2019, "Qualification")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::Utilities,
    :schema_name => XSD::QName.new(NsC_2019, "Utilities"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["utility", ["BuildingSync::UtilityType[]", XSD::QName.new(NsC_2019, "Utility")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ReportType::AuditorContactID,
    :schema_name => XSD::QName.new(NsC_2019, "AuditorContactID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "HVACSystemType"),
    :schema_element => [
      ["plants", ["BuildingSync::HVACSystemType::Plants", XSD::QName.new(NsC_2019, "Plants")], [0, 1]],
      ["heatingAndCoolingSystems", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems", XSD::QName.new(NsC_2019, "HeatingAndCoolingSystems")], [0, 1]],
      ["ductSystems", ["BuildingSync::HVACSystemType::DuctSystems", XSD::QName.new(NsC_2019, "DuctSystems")], [0, 1]],
      ["otherHVACSystems", ["BuildingSync::HVACSystemType::OtherHVACSystems", XSD::QName.new(NsC_2019, "OtherHVACSystems")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Priority")], [0, 1]],
      ["frequencyOfMaintenance", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FrequencyOfMaintenance")], [0, 1]],
      [ :choice,
        ["primaryHVACSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrimaryHVACSystemType")], [0, 1]],
        ["principalHVACSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PrincipalHVACSystemType")], [0, 1]]
      ],
      ["hVACControlSystemTypes", ["BuildingSync::HVACSystemType::HVACControlSystemTypes", XSD::QName.new(NsC_2019, "HVACControlSystemTypes")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::Plants::HeatingPlants,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingPlants"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatingPlant", ["BuildingSync::HeatingPlantType[]", XSD::QName.new(NsC_2019, "HeatingPlant")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::Plants::CoolingPlants,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingPlants"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["coolingPlant", ["BuildingSync::CoolingPlantType[]", XSD::QName.new(NsC_2019, "CoolingPlant")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::Plants::CondenserPlants,
    :schema_name => XSD::QName.new(NsC_2019, "CondenserPlants"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["condenserPlant", ["BuildingSync::CondenserPlantType[]", XSD::QName.new(NsC_2019, "CondenserPlant")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::Plants,
    :schema_name => XSD::QName.new(NsC_2019, "Plants"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatingPlants", ["BuildingSync::HVACSystemType::Plants::HeatingPlants", XSD::QName.new(NsC_2019, "HeatingPlants")], [0, 1]],
      ["coolingPlants", ["BuildingSync::HVACSystemType::Plants::CoolingPlants", XSD::QName.new(NsC_2019, "CoolingPlants")], [0, 1]],
      ["condenserPlants", ["BuildingSync::HVACSystemType::Plants::CondenserPlants", XSD::QName.new(NsC_2019, "CondenserPlants")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::SourceHeatingPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "SourceHeatingPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::Furnace,
    :schema_name => XSD::QName.new(NsC_2019, "Furnace"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["furnaceType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FurnaceType")], [0, 1]],
      ["burnerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BurnerType")], [0, 1]],
      ["burnerControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BurnerControlType")], [0, 1]],
      ["burnerQuantity", ["BuildingSync::BurnerQuantity", XSD::QName.new(NsC_2019, "BurnerQuantity")], [0, 1]],
      ["burnerYearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "BurnerYearInstalled")], [0, 1]],
      ["burnerTurndownRatio", ["BuildingSync::BurnerTurndownRatio", XSD::QName.new(NsC_2019, "BurnerTurndownRatio")], [0, 1]],
      ["ignitionType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "IgnitionType")], [0, 1]],
      ["draftType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftType")], [0, 1]],
      ["draftBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftBoundary")], [0, 1]],
      ["condensingOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CondensingOperation")], [0, 1]],
      ["combustionEfficiency", ["BuildingSync::CombustionEfficiency", XSD::QName.new(NsC_2019, "CombustionEfficiency")], [0, 1]],
      ["thermalEfficiency", ["BuildingSync::ThermalEfficiency", XSD::QName.new(NsC_2019, "ThermalEfficiency")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::HeatPumpBackupHeatingSwitchoverTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HeatPumpBackupHeatingSwitchoverTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::HeatPumpBackupAFUE,
    :schema_name => XSD::QName.new(NsC_2019, "HeatPumpBackupAFUE"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::LinkedHeatingPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedHeatingPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump,
    :schema_name => XSD::QName.new(NsC_2019, "HeatPump"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatPumpType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatPumpType")], [0, 1]],
      ["heatPumpBackupHeatingSwitchoverTemperature", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::HeatPumpBackupHeatingSwitchoverTemperature", XSD::QName.new(NsC_2019, "HeatPumpBackupHeatingSwitchoverTemperature")], [0, 1]],
      ["heatPumpBackupSystemFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "HeatPumpBackupSystemFuel")], [0, 1]],
      ["heatPumpBackupAFUE", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::HeatPumpBackupAFUE", XSD::QName.new(NsC_2019, "HeatPumpBackupAFUE")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["coolingSourceID", ["BuildingSync::CoolingSourceID", XSD::QName.new(NsC_2019, "CoolingSourceID")], [0, 1]],
      ["linkedHeatingPlantID", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump::LinkedHeatingPlantID", XSD::QName.new(NsC_2019, "LinkedHeatingPlantID")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSourceType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["sourceHeatingPlantID", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::SourceHeatingPlantID", XSD::QName.new(NsC_2019, "SourceHeatingPlantID")], [0, 1]],
      ["electricResistance", ["BuildingSync::ElectricResistanceType", XSD::QName.new(NsC_2019, "ElectricResistance")], [0, 1]],
      ["furnace", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::Furnace", XSD::QName.new(NsC_2019, "Furnace")], [0, 1]],
      ["heatPump", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType::HeatPump", XSD::QName.new(NsC_2019, "HeatPump")], [0, 1]],
      ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
      ["noHeating", ["BuildingSync::NoHeatingType", XSD::QName.new(NsC_2019, "NoHeating")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::Capacity,
    :schema_name => XSD::QName.new(NsC_2019, "Capacity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatingSourceType", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::HeatingSourceType", XSD::QName.new(NsC_2019, "HeatingSourceType")], [0, 1]],
      ["heatingMedium", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatingMedium")], [0, 1]],
      ["annualHeatingEfficiencyValue", ["BuildingSync::AnnualHeatingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyValue")], [0, 1]],
      ["annualHeatingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyUnits")], [0, 1]],
      ["inputCapacity", ["BuildingSync::InputCapacity", XSD::QName.new(NsC_2019, "InputCapacity")], [0, 1]],
      [ :choice,
        ["outputCapacity", ["BuildingSync::OutputCapacity", XSD::QName.new(NsC_2019, "OutputCapacity")], [0, 1]],
        ["capacity", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]]
      ],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["heatingStaging", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatingStaging")], [0, 1]],
      ["numberOfHeatingStages", ["BuildingSync::NumberOfHeatingStages", XSD::QName.new(NsC_2019, "NumberOfHeatingStages")], [0, 1]],
      ["heatingStageCapacityFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "HeatingStageCapacityFraction")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["heatingSourceCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "HeatingSourceCondition")], [0, 1]],
      ["controls", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSources"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatingSource", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources::HeatingSource[]", XSD::QName.new(NsC_2019, "HeatingSource")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::CoolingPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::DX,
    :schema_name => XSD::QName.new(NsC_2019, "DX"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["dXSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DXSystemType")], [0, 1]],
      ["compressorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CompressorType")], [0, 1]],
      ["compressorStaging", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CompressorStaging")], [0, 1]],
      ["condenserPlantIDs", ["BuildingSync::CondenserPlantIDs", XSD::QName.new(NsC_2019, "CondenserPlantIDs")], [0, 1]],
      ["refrigerant", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Refrigerant")], [0, 1]],
      ["refrigerantChargeFactor", ["BuildingSync::RefrigerantChargeFactor", XSD::QName.new(NsC_2019, "RefrigerantChargeFactor")], [0, 1]],
      ["activeDehumidification", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "ActiveDehumidification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::EvaporativeCooler,
    :schema_name => XSD::QName.new(NsC_2019, "EvaporativeCooler"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["evaporativeCoolingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EvaporativeCoolingType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSourceType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["coolingPlantID", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::CoolingPlantID", XSD::QName.new(NsC_2019, "CoolingPlantID")], [0, 1]],
      ["dX", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::DX", XSD::QName.new(NsC_2019, "DX")], [0, 1]],
      ["evaporativeCooler", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType::EvaporativeCooler", XSD::QName.new(NsC_2019, "EvaporativeCooler")], [0, 1]],
      ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
      ["noCooling", ["BuildingSync::NoCoolingType", XSD::QName.new(NsC_2019, "NoCooling")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["coolingSourceType", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::CoolingSourceType", XSD::QName.new(NsC_2019, "CoolingSourceType")], [0, 1]],
      ["coolingMedium", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingMedium")], [0, 1]],
      ["annualCoolingEfficiencyValue", ["BuildingSync::AnnualCoolingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyValue")], [0, 1]],
      ["annualCoolingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyUnits")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["numberOfDiscreteCoolingStages", ["BuildingSync::NumberOfDiscreteCoolingStages", XSD::QName.new(NsC_2019, "NumberOfDiscreteCoolingStages")], [0, 1]],
      ["coolingStageCapacity", ["BuildingSync::CoolingStageCapacity", XSD::QName.new(NsC_2019, "CoolingStageCapacity")], [0, 1]],
      ["minimumPartLoadRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "MinimumPartLoadRatio")], [0, 1]],
      ["ratedCoolingSensibleHeatRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "RatedCoolingSensibleHeatRatio")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["coolingSourceCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "CoolingSourceCondition")], [0, 1]],
      ["controls", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSources"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["coolingSource", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources::CoolingSource[]", XSD::QName.new(NsC_2019, "CoolingSource")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment::Convection,
    :schema_name => XSD::QName.new(NsC_2019, "Convection"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["convectionType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ConvectionType")], [0, 1]],
      ["pipeInsulationThickness", ["BuildingSync::PipeInsulationThickness", XSD::QName.new(NsC_2019, "PipeInsulationThickness")], [0, 1]],
      ["pipeLocation", ["BuildingSync::PipeLocation", XSD::QName.new(NsC_2019, "PipeLocation")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment::Radiant,
    :schema_name => XSD::QName.new(NsC_2019, "Radiant"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["radiantType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RadiantType")], [0, 1]],
      ["pipeInsulationThickness", ["BuildingSync::PipeInsulationThickness", XSD::QName.new(NsC_2019, "PipeInsulationThickness")], [0, 1]],
      ["pipeLocation", ["BuildingSync::PipeLocation", XSD::QName.new(NsC_2019, "PipeLocation")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment,
    :schema_name => XSD::QName.new(NsC_2019, "ZoneEquipment"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fanBased", ["BuildingSync::FanBasedType", XSD::QName.new(NsC_2019, "FanBased")], [0, 1]],
      ["convection", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment::Convection", XSD::QName.new(NsC_2019, "Convection")], [0, 1]],
      ["radiant", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment::Radiant", XSD::QName.new(NsC_2019, "Radiant")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::CentralAirDistribution::ReheatPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "ReheatPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::CentralAirDistribution,
    :schema_name => XSD::QName.new(NsC_2019, "CentralAirDistribution"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["airDeliveryType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirDeliveryType")], [0, 1]],
      ["terminalUnit", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TerminalUnit")], [0, 1]],
      ["reheatSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReheatSource")], [0, 1]],
      ["reheatControlMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReheatControlMethod")], [0, 1]],
      ["reheatPlantID", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::CentralAirDistribution::ReheatPlantID", XSD::QName.new(NsC_2019, "ReheatPlantID")], [0, 1]],
      ["fanBased", ["BuildingSync::FanBasedType", XSD::QName.new(NsC_2019, "FanBased")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType,
    :schema_name => XSD::QName.new(NsC_2019, "DeliveryType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["zoneEquipment", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::ZoneEquipment", XSD::QName.new(NsC_2019, "ZoneEquipment")], [0, 1]],
      ["centralAirDistribution", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType::CentralAirDistribution", XSD::QName.new(NsC_2019, "CentralAirDistribution")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::HeatingSourceID,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSourceID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery,
    :schema_name => XSD::QName.new(NsC_2019, "Delivery"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["deliveryType", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::DeliveryType", XSD::QName.new(NsC_2019, "DeliveryType")], [0, 1]],
      ["heatingSourceID", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::HeatingSourceID", XSD::QName.new(NsC_2019, "HeatingSourceID")], [0, 1]],
      ["coolingSourceID", ["BuildingSync::CoolingSourceID", XSD::QName.new(NsC_2019, "CoolingSourceID")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["controls", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["deliveryCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "DeliveryCondition")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries,
    :schema_name => XSD::QName.new(NsC_2019, "Deliveries"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["delivery", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries::Delivery[]", XSD::QName.new(NsC_2019, "Delivery")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HeatingAndCoolingSystems,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingAndCoolingSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["zoningSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ZoningSystemType")], [0, 1]],
      ["heatingSources", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::HeatingSources", XSD::QName.new(NsC_2019, "HeatingSources")], [0, 1]],
      ["coolingSources", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::CoolingSources", XSD::QName.new(NsC_2019, "CoolingSources")], [0, 1]],
      ["deliveries", ["BuildingSync::HVACSystemType::HeatingAndCoolingSystems::Deliveries", XSD::QName.new(NsC_2019, "Deliveries")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::DuctSystems,
    :schema_name => XSD::QName.new(NsC_2019, "DuctSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ductSystem", ["BuildingSync::DuctSystemType[]", XSD::QName.new(NsC_2019, "DuctSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::OtherHVACSystems,
    :schema_name => XSD::QName.new(NsC_2019, "OtherHVACSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["otherHVACSystem", ["BuildingSync::OtherHVACSystemType[]", XSD::QName.new(NsC_2019, "OtherHVACSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HVACSystemType::HVACControlSystemTypes,
    :schema_name => XSD::QName.new(NsC_2019, "HVACControlSystemTypes"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["hVACControlSystemType", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "HVACControlSystemType")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "DuctSystemType"),
    :schema_element => [
      ["ductConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DuctConfiguration")], [0, 1]],
      ["minimumOutsideAirPercentage", ["BuildingSync::DuctSystemType::MinimumOutsideAirPercentage", XSD::QName.new(NsC_2019, "MinimumOutsideAirPercentage")], [0, 1]],
      [ :choice,
        ["maximumOAFlowRate", ["BuildingSync::DuctSystemType::MaximumOAFlowRate", XSD::QName.new(NsC_2019, "MaximumOAFlowRate")], [0, 1]],
        ["maximumOutsideAirFlowRate", ["BuildingSync::DuctSystemType::MaximumOutsideAirFlowRate", XSD::QName.new(NsC_2019, "MaximumOutsideAirFlowRate")], [0, 1]]
      ],
      ["ductInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "DuctInsulationCondition")], [0, 1]],
      ["ductSealing", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DuctSealing")], [0, 1]],
      ["ductInsulationRValue", ["BuildingSync::DuctSystemType::DuctInsulationRValue", XSD::QName.new(NsC_2019, "DuctInsulationRValue")], [0, 1]],
      ["ductSurfaceArea", ["BuildingSync::DuctSystemType::DuctSurfaceArea", XSD::QName.new(NsC_2019, "DuctSurfaceArea")], [0, 1]],
      ["supplyDuctPercentConditionedSpace", ["BuildingSync::DuctSystemType::SupplyDuctPercentConditionedSpace", XSD::QName.new(NsC_2019, "SupplyDuctPercentConditionedSpace")], [0, 1]],
      ["returnDuctPercentConditionedSpace", ["BuildingSync::DuctSystemType::ReturnDuctPercentConditionedSpace", XSD::QName.new(NsC_2019, "ReturnDuctPercentConditionedSpace")], [0, 1]],
      ["staticPressureInstalled", ["BuildingSync::DuctSystemType::StaticPressureInstalled", XSD::QName.new(NsC_2019, "StaticPressureInstalled")], [0, 1]],
      ["ductType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DuctType")], [0, 1]],
      ["ductLeakageTestMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DuctLeakageTestMethod")], [0, 1]],
      ["ductPressureTestLeakageRate", ["BuildingSync::DuctSystemType::DuctPressureTestLeakageRate", XSD::QName.new(NsC_2019, "DuctPressureTestLeakageRate")], [0, 1]],
      ["supplyFractionOfDuctLeakage", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "SupplyFractionOfDuctLeakage")], [0, 1]],
      ["ductPressureTestLeakagePercentage", ["BuildingSync::DuctSystemType::DuctPressureTestLeakagePercentage", XSD::QName.new(NsC_2019, "DuctPressureTestLeakagePercentage")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["heatingDeliveryID", ["BuildingSync::DuctSystemType::HeatingDeliveryID", XSD::QName.new(NsC_2019, "HeatingDeliveryID")], [0, 1]],
      ["coolingDeliveryID", ["BuildingSync::DuctSystemType::CoolingDeliveryID", XSD::QName.new(NsC_2019, "CoolingDeliveryID")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::MinimumOutsideAirPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "MinimumOutsideAirPercentage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::MaximumOAFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "MaximumOAFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::MaximumOutsideAirFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "MaximumOutsideAirFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::DuctInsulationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "DuctInsulationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::DuctSurfaceArea,
    :schema_name => XSD::QName.new(NsC_2019, "DuctSurfaceArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::SupplyDuctPercentConditionedSpace,
    :schema_name => XSD::QName.new(NsC_2019, "SupplyDuctPercentConditionedSpace"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::ReturnDuctPercentConditionedSpace,
    :schema_name => XSD::QName.new(NsC_2019, "ReturnDuctPercentConditionedSpace"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::StaticPressureInstalled,
    :schema_name => XSD::QName.new(NsC_2019, "StaticPressureInstalled"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::DuctPressureTestLeakageRate,
    :schema_name => XSD::QName.new(NsC_2019, "DuctPressureTestLeakageRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::DuctPressureTestLeakagePercentage,
    :schema_name => XSD::QName.new(NsC_2019, "DuctPressureTestLeakagePercentage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::HeatingDeliveryID,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingDeliveryID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DuctSystemType::CoolingDeliveryID,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingDeliveryID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType,
    :schema_type => XSD::QName.new(NsC_2019, "HeatingPlantType"),
    :schema_element => [
      [ :choice,
        ["boiler", ["BuildingSync::HeatingPlantType::Boiler", XSD::QName.new(NsC_2019, "Boiler")], [0, 1]],
        ["districtHeating", ["BuildingSync::HeatingPlantType::DistrictHeating", XSD::QName.new(NsC_2019, "DistrictHeating")], [0, 1]],
        ["solarThermal", ["BuildingSync::HeatingPlantType::SolarThermal", XSD::QName.new(NsC_2019, "SolarThermal")], [0, 1]],
        ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
        ["noHeating", ["BuildingSync::NoHeatingType", XSD::QName.new(NsC_2019, "NoHeating")], [0, 1]],
        ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
      ],
      ["heatingPlantCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "HeatingPlantCondition")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["buildingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BuildingAutomationSystem")], [0, 1]],
      ["controlSystemTypes", ["BuildingSync::HeatingPlantType::ControlSystemTypes", XSD::QName.new(NsC_2019, "ControlSystemTypes")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::Capacity,
    :schema_name => XSD::QName.new(NsC_2019, "Capacity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::BoilerInsulationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerInsulationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::BoilerInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::HotWaterBoilerMinimumFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "HotWaterBoilerMinimumFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::BoilerEWT,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerEWT"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler::BoilerPercentCondensateReturn,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerPercentCondensateReturn"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::Boiler,
    :schema_name => XSD::QName.new(NsC_2019, "Boiler"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["boilerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BoilerType")], [0, 1]],
      ["burnerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BurnerType")], [0, 1]],
      ["burnerControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BurnerControlType")], [0, 1]],
      ["burnerQuantity", ["BuildingSync::BurnerQuantity", XSD::QName.new(NsC_2019, "BurnerQuantity")], [0, 1]],
      ["burnerYearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "BurnerYearInstalled")], [0, 1]],
      ["burnerTurndownRatio", ["BuildingSync::BurnerTurndownRatio", XSD::QName.new(NsC_2019, "BurnerTurndownRatio")], [0, 1]],
      ["ignitionType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "IgnitionType")], [0, 1]],
      ["draftType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftType")], [0, 1]],
      ["draftBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftBoundary")], [0, 1]],
      ["condensingOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CondensingOperation")], [0, 1]],
      ["heatingStaging", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatingStaging")], [0, 1]],
      ["inputCapacity", ["BuildingSync::InputCapacity", XSD::QName.new(NsC_2019, "InputCapacity")], [0, 1]],
      [ :choice,
        ["outputCapacity", ["BuildingSync::OutputCapacity", XSD::QName.new(NsC_2019, "OutputCapacity")], [0, 1]],
        ["capacity", ["BuildingSync::HeatingPlantType::Boiler::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]]
      ],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["numberOfHeatingStages", ["BuildingSync::NumberOfHeatingStages", XSD::QName.new(NsC_2019, "NumberOfHeatingStages")], [0, 1]],
      ["heatingStageCapacityFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "HeatingStageCapacityFraction")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Priority")], [0, 1]],
      ["annualHeatingEfficiencyValue", ["BuildingSync::AnnualHeatingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyValue")], [0, 1]],
      ["annualHeatingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyUnits")], [0, 1]],
      ["combustionEfficiency", ["BuildingSync::CombustionEfficiency", XSD::QName.new(NsC_2019, "CombustionEfficiency")], [0, 1]],
      ["thermalEfficiency", ["BuildingSync::ThermalEfficiency", XSD::QName.new(NsC_2019, "ThermalEfficiency")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["boilerInsulationRValue", ["BuildingSync::HeatingPlantType::Boiler::BoilerInsulationRValue", XSD::QName.new(NsC_2019, "BoilerInsulationRValue")], [0, 1]],
      ["boilerInsulationThickness", ["BuildingSync::HeatingPlantType::Boiler::BoilerInsulationThickness", XSD::QName.new(NsC_2019, "BoilerInsulationThickness")], [0, 1]],
      ["hotWaterBoilerMinimumFlowRate", ["BuildingSync::HeatingPlantType::Boiler::HotWaterBoilerMinimumFlowRate", XSD::QName.new(NsC_2019, "HotWaterBoilerMinimumFlowRate")], [0, 1]],
      ["hotWaterBoilerMaximumFlowRate", ["BuildingSync::HotWaterBoilerMaximumFlowRate", XSD::QName.new(NsC_2019, "HotWaterBoilerMaximumFlowRate")], [0, 1]],
      ["boilerEWT", ["BuildingSync::HeatingPlantType::Boiler::BoilerEWT", XSD::QName.new(NsC_2019, "BoilerEWT")], [0, 1]],
      ["boilerLWT", ["BuildingSync::BoilerLWT", XSD::QName.new(NsC_2019, "BoilerLWT")], [0, 1]],
      ["hotWaterResetControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HotWaterResetControl")], [0, 1]],
      ["steamBoilerMinimumOperatingPressure", ["BuildingSync::SteamBoilerMinimumOperatingPressure", XSD::QName.new(NsC_2019, "SteamBoilerMinimumOperatingPressure")], [0, 1]],
      ["steamBoilerMaximumOperatingPressure", ["BuildingSync::SteamBoilerMaximumOperatingPressure", XSD::QName.new(NsC_2019, "SteamBoilerMaximumOperatingPressure")], [0, 1]],
      ["boilerPercentCondensateReturn", ["BuildingSync::HeatingPlantType::Boiler::BoilerPercentCondensateReturn", XSD::QName.new(NsC_2019, "BoilerPercentCondensateReturn")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::DistrictHeating::Capacity,
    :schema_name => XSD::QName.new(NsC_2019, "Capacity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::DistrictHeating,
    :schema_name => XSD::QName.new(NsC_2019, "DistrictHeating"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["districtHeatingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DistrictHeatingType")], [0, 1]],
      [ :choice,
        ["outputCapacity", ["BuildingSync::OutputCapacity", XSD::QName.new(NsC_2019, "OutputCapacity")], [0, 1]],
        ["capacity", ["BuildingSync::HeatingPlantType::DistrictHeating::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]]
      ],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["annualHeatingEfficiencyValue", ["BuildingSync::AnnualHeatingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyValue")], [0, 1]],
      ["annualHeatingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyUnits")], [0, 1]],
      ["hotWaterBoilerMaximumFlowRate", ["BuildingSync::HotWaterBoilerMaximumFlowRate", XSD::QName.new(NsC_2019, "HotWaterBoilerMaximumFlowRate")], [0, 1]],
      ["boilerLWT", ["BuildingSync::BoilerLWT", XSD::QName.new(NsC_2019, "BoilerLWT")], [0, 1]],
      ["steamBoilerMinimumOperatingPressure", ["BuildingSync::SteamBoilerMinimumOperatingPressure", XSD::QName.new(NsC_2019, "SteamBoilerMinimumOperatingPressure")], [0, 1]],
      ["steamBoilerMaximumOperatingPressure", ["BuildingSync::SteamBoilerMaximumOperatingPressure", XSD::QName.new(NsC_2019, "SteamBoilerMaximumOperatingPressure")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::SolarThermal::Capacity,
    :schema_name => XSD::QName.new(NsC_2019, "Capacity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::SolarThermal,
    :schema_name => XSD::QName.new(NsC_2019, "SolarThermal"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      [ :choice,
        ["outputCapacity", ["BuildingSync::OutputCapacity", XSD::QName.new(NsC_2019, "OutputCapacity")], [0, 1]],
        ["capacity", ["BuildingSync::HeatingPlantType::SolarThermal::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]]
      ],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["annualHeatingEfficiencyValue", ["BuildingSync::AnnualHeatingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyValue")], [0, 1]],
      ["annualHeatingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyUnits")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HeatingPlantType::ControlSystemTypes,
    :schema_name => XSD::QName.new(NsC_2019, "ControlSystemTypes"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType[]", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CoolingPlantType,
    :schema_type => XSD::QName.new(NsC_2019, "CoolingPlantType"),
    :schema_element => [
      [ :choice,
        ["chiller", ["BuildingSync::CoolingPlantType::Chiller", XSD::QName.new(NsC_2019, "Chiller")], [0, 1]],
        ["districtChilledWater", ["BuildingSync::CoolingPlantType::DistrictChilledWater", XSD::QName.new(NsC_2019, "DistrictChilledWater")], [0, 1]],
        ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
        ["noCooling", ["BuildingSync::NoCoolingType", XSD::QName.new(NsC_2019, "NoCooling")], [0, 1]],
        ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
      ],
      ["condenserType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CondenserType")], [0, 1]],
      ["coolingPlantCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "CoolingPlantCondition")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["buildingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BuildingAutomationSystem")], [0, 1]],
      ["controlSystemTypes", ["BuildingSync::CoolingPlantType::ControlSystemTypes", XSD::QName.new(NsC_2019, "ControlSystemTypes")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CoolingPlantType::Chiller,
    :schema_name => XSD::QName.new(NsC_2019, "Chiller"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["chillerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ChillerType")], [0, 1]],
      ["chillerCompressorDriver", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ChillerCompressorDriver")], [0, 1]],
      ["chillerCompressorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ChillerCompressorType")], [0, 1]],
      ["compressorStaging", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CompressorStaging")], [0, 1]],
      ["numberOfDiscreteCoolingStages", ["BuildingSync::NumberOfDiscreteCoolingStages", XSD::QName.new(NsC_2019, "NumberOfDiscreteCoolingStages")], [0, 1]],
      ["coolingStageCapacity", ["BuildingSync::CoolingStageCapacity", XSD::QName.new(NsC_2019, "CoolingStageCapacity")], [0, 1]],
      ["condenserPlantIDs", ["BuildingSync::CondenserPlantIDs", XSD::QName.new(NsC_2019, "CondenserPlantIDs")], [0, 1]],
      ["refrigerant", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Refrigerant")], [0, 1]],
      ["refrigerantChargeFactor", ["BuildingSync::RefrigerantChargeFactor", XSD::QName.new(NsC_2019, "RefrigerantChargeFactor")], [0, 1]],
      ["absorptionHeatSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AbsorptionHeatSource")], [0, 1]],
      ["absorptionStages", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AbsorptionStages")], [0, 1]],
      ["annualCoolingEfficiencyValue", ["BuildingSync::AnnualCoolingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyValue")], [0, 1]],
      ["annualCoolingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyUnits")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["minimumPartLoadRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "MinimumPartLoadRatio")], [0, 1]],
      ["ratedCoolingSensibleHeatRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "RatedCoolingSensibleHeatRatio")], [0, 1]],
      ["partLoadRatioBelowWhichHotGasBypassOperates", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "PartLoadRatioBelowWhichHotGasBypassOperates")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["chilledWaterResetControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ChilledWaterResetControl")], [0, 1]],
      ["chilledWaterSupplyTemperature", ["BuildingSync::ChilledWaterSupplyTemperature", XSD::QName.new(NsC_2019, "ChilledWaterSupplyTemperature")], [0, 1]],
      ["activeDehumidification", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "ActiveDehumidification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CoolingPlantType::DistrictChilledWater,
    :schema_name => XSD::QName.new(NsC_2019, "DistrictChilledWater"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["annualCoolingEfficiencyValue", ["BuildingSync::AnnualCoolingEfficiencyValue", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyValue")], [0, 1]],
      ["annualCoolingEfficiencyUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyUnits")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["ratedCoolingSensibleHeatRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "RatedCoolingSensibleHeatRatio")], [0, 1]],
      ["chilledWaterSupplyTemperature", ["BuildingSync::ChilledWaterSupplyTemperature", XSD::QName.new(NsC_2019, "ChilledWaterSupplyTemperature")], [0, 1]],
      ["activeDehumidification", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "ActiveDehumidification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CoolingPlantType::ControlSystemTypes,
    :schema_name => XSD::QName.new(NsC_2019, "ControlSystemTypes"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType[]", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType,
    :schema_type => XSD::QName.new(NsC_2019, "CondenserPlantType"),
    :schema_element => [
      [ :choice,
        ["airCooled", ["BuildingSync::CondenserPlantType::AirCooled", XSD::QName.new(NsC_2019, "AirCooled")], [0, 1]],
        ["waterCooled", ["BuildingSync::CondenserPlantType::WaterCooled", XSD::QName.new(NsC_2019, "WaterCooled")], [0, 1]],
        ["groundSource", ["BuildingSync::CondenserPlantType::GroundSource", XSD::QName.new(NsC_2019, "GroundSource")], [0, 1]],
        ["glycolCooledDryCooler", ["BuildingSync::CondenserPlantType::GlycolCooledDryCooler", XSD::QName.new(NsC_2019, "GlycolCooledDryCooler")], [0, 1]],
        ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
        ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
      ],
      ["condenserPlantCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "CondenserPlantCondition")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["buildingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BuildingAutomationSystem")], [0, 1]],
      ["controlSystemTypes", ["BuildingSync::CondenserPlantType::ControlSystemTypes", XSD::QName.new(NsC_2019, "ControlSystemTypes")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser::EvaporativelyCooledCondenserMinimumTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenserMinimumTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser::EvaporativelyCooledCondenserMaximumTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenserMaximumTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser,
    :schema_name => XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenser"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["evaporativelyCooledCondenserMinimumTemperature", ["BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser::EvaporativelyCooledCondenserMinimumTemperature", XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenserMinimumTemperature")], [0, 1]],
      ["evaporativelyCooledCondenserMaximumTemperature", ["BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser::EvaporativelyCooledCondenserMaximumTemperature", XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenserMaximumTemperature")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled::DesignAmbientTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "DesignAmbientTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled::DesignTemperatureDifference,
    :schema_name => XSD::QName.new(NsC_2019, "DesignTemperatureDifference"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::AirCooled,
    :schema_name => XSD::QName.new(NsC_2019, "AirCooled"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["evaporativelyCooledCondenser", ["BuildingSync::CondenserPlantType::AirCooled::EvaporativelyCooledCondenser", XSD::QName.new(NsC_2019, "EvaporativelyCooledCondenser")], [0, 1]],
      ["condenserFanSpeedOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CondenserFanSpeedOperation")], [0, 1]],
      ["condensingTemperature", ["BuildingSync::CondensingTemperature", XSD::QName.new(NsC_2019, "CondensingTemperature")], [0, 1]],
      ["splitCondenser", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "SplitCondenser")], [0, 1]],
      ["designAmbientTemperature", ["BuildingSync::CondenserPlantType::AirCooled::DesignAmbientTemperature", XSD::QName.new(NsC_2019, "DesignAmbientTemperature")], [0, 1]],
      ["designTemperatureDifference", ["BuildingSync::CondenserPlantType::AirCooled::DesignTemperatureDifference", XSD::QName.new(NsC_2019, "DesignTemperatureDifference")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::WaterCooled::WaterSideEconomizer,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterSideEconomizerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterSideEconomizerType")], [0, 1]],
      ["waterSideEconomizerTemperatureMaximum", ["BuildingSync::WaterSideEconomizerTemperatureMaximum", XSD::QName.new(NsC_2019, "WaterSideEconomizerTemperatureMaximum")], [0, 1]],
      ["waterSideEconomizerDBTemperatureMaximum", ["BuildingSync::WaterSideEconomizerDBTemperatureMaximum", XSD::QName.new(NsC_2019, "WaterSideEconomizerDBTemperatureMaximum")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::WaterCooled::CellCount,
    :schema_name => XSD::QName.new(NsC_2019, "CellCount"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::WaterCooled,
    :schema_name => XSD::QName.new(NsC_2019, "WaterCooled"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterCooledCondenserType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterCooledCondenserType")], [0, 1]],
      ["condenserWaterTemperature", ["BuildingSync::CondenserWaterTemperature", XSD::QName.new(NsC_2019, "CondenserWaterTemperature")], [0, 1]],
      ["condensingTemperature", ["BuildingSync::CondensingTemperature", XSD::QName.new(NsC_2019, "CondensingTemperature")], [0, 1]],
      ["waterCooledCondenserFlowControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterCooledCondenserFlowControl")], [0, 1]],
      ["waterSideEconomizer", ["BuildingSync::CondenserPlantType::WaterCooled::WaterSideEconomizer", XSD::QName.new(NsC_2019, "WaterSideEconomizer")], [0, 1]],
      ["coolingTowerFanControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingTowerFanControl")], [0, 1]],
      ["coolingTowerTemperatureControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingTowerTemperatureControl")], [0, 1]],
      ["coolingTowerCellControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingTowerCellControl")], [0, 1]],
      ["cellCount", ["BuildingSync::CondenserPlantType::WaterCooled::CellCount", XSD::QName.new(NsC_2019, "CellCount")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::GroundSource::WaterSideEconomizer::WaterSideEconomizerTemperatureSetpoint,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizerTemperatureSetpoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::GroundSource::WaterSideEconomizer,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterSideEconomizerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterSideEconomizerType")], [0, 1]],
      ["waterSideEconomizerTemperatureSetpoint", ["BuildingSync::CondenserPlantType::GroundSource::WaterSideEconomizer::WaterSideEconomizerTemperatureSetpoint", XSD::QName.new(NsC_2019, "WaterSideEconomizerTemperatureSetpoint")], [0, 1]],
      ["waterSideEconomizerTemperatureMaximum", ["BuildingSync::WaterSideEconomizerTemperatureMaximum", XSD::QName.new(NsC_2019, "WaterSideEconomizerTemperatureMaximum")], [0, 1]],
      ["waterSideEconomizerDBTemperatureMaximum", ["BuildingSync::WaterSideEconomizerDBTemperatureMaximum", XSD::QName.new(NsC_2019, "WaterSideEconomizerDBTemperatureMaximum")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::GroundSource::WellCount,
    :schema_name => XSD::QName.new(NsC_2019, "WellCount"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::GroundSource,
    :schema_name => XSD::QName.new(NsC_2019, "GroundSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["groundSourceType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "GroundSourceType")], [0, 1]],
      ["condenserWaterTemperature", ["BuildingSync::CondenserWaterTemperature", XSD::QName.new(NsC_2019, "CondenserWaterTemperature")], [0, 1]],
      ["condensingTemperature", ["BuildingSync::CondensingTemperature", XSD::QName.new(NsC_2019, "CondensingTemperature")], [0, 1]],
      ["waterCooledCondenserFlowControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterCooledCondenserFlowControl")], [0, 1]],
      ["waterSideEconomizer", ["BuildingSync::CondenserPlantType::GroundSource::WaterSideEconomizer", XSD::QName.new(NsC_2019, "WaterSideEconomizer")], [0, 1]],
      ["wellCount", ["BuildingSync::CondenserPlantType::GroundSource::WellCount", XSD::QName.new(NsC_2019, "WellCount")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::GlycolCooledDryCooler,
    :schema_name => XSD::QName.new(NsC_2019, "GlycolCooledDryCooler"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["condensingTemperature", ["BuildingSync::CondensingTemperature", XSD::QName.new(NsC_2019, "CondensingTemperature")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantType::ControlSystemTypes,
    :schema_name => XSD::QName.new(NsC_2019, "ControlSystemTypes"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType[]", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "OtherHVACSystemType"),
    :schema_element => [
      ["otherHVACType", ["BuildingSync::OtherHVACSystemType::OtherHVACType", XSD::QName.new(NsC_2019, "OtherHVACType")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["otherHVACSystemCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "OtherHVACSystemCondition")], [0, 1]],
      ["controls", ["BuildingSync::OtherHVACSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["integration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Integration")], [0, 1]],
      ["linkedDeliveryIDs", ["BuildingSync::OtherHVACSystemType::LinkedDeliveryIDs", XSD::QName.new(NsC_2019, "LinkedDeliveryIDs")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::Humidifier::HumidityControlMinimum,
    :schema_name => XSD::QName.new(NsC_2019, "HumidityControlMinimum"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::Humidifier,
    :schema_name => XSD::QName.new(NsC_2019, "Humidifier"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["humidificationType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HumidificationType")], [0, 1]],
      ["humidityControlMinimum", ["BuildingSync::OtherHVACSystemType::OtherHVACType::Humidifier::HumidityControlMinimum", XSD::QName.new(NsC_2019, "HumidityControlMinimum")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["systemPerformanceRatio", ["BuildingSync::SystemPerformanceRatio", XSD::QName.new(NsC_2019, "SystemPerformanceRatio")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::Dehumidifier::HumidityControlMaximum,
    :schema_name => XSD::QName.new(NsC_2019, "HumidityControlMaximum"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::Dehumidifier,
    :schema_name => XSD::QName.new(NsC_2019, "Dehumidifier"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["dehumidificationType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DehumidificationType")], [0, 1]],
      ["humidityControlMaximum", ["BuildingSync::OtherHVACSystemType::OtherHVACType::Dehumidifier::HumidityControlMaximum", XSD::QName.new(NsC_2019, "HumidityControlMaximum")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["systemPerformanceRatio", ["BuildingSync::SystemPerformanceRatio", XSD::QName.new(NsC_2019, "SystemPerformanceRatio")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::AirCleaner,
    :schema_name => XSD::QName.new(NsC_2019, "AirCleaner"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["systemPerformanceRatio", ["BuildingSync::SystemPerformanceRatio", XSD::QName.new(NsC_2019, "SystemPerformanceRatio")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::MechanicalVentilation,
    :schema_name => XSD::QName.new(NsC_2019, "MechanicalVentilation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ventilationRate", ["BuildingSync::VentilationRate", XSD::QName.new(NsC_2019, "VentilationRate")], [0, 1]],
      ["requiredVentilationRate", ["BuildingSync::RequiredVentilationRate", XSD::QName.new(NsC_2019, "RequiredVentilationRate")], [0, 1]],
      ["ventilationType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "VentilationType")], [0, 1]],
      ["demandControlVentilation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "DemandControlVentilation")], [0, 1]],
      ["ventilationControlMethods", ["BuildingSync::VentilationControlMethods", XSD::QName.new(NsC_2019, "VentilationControlMethods")], [0, 1]],
      ["ventilationZoneControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "VentilationZoneControl")], [0, 1]],
      ["makeupAirSourceID", ["BuildingSync::MakeupAirSourceID", XSD::QName.new(NsC_2019, "MakeupAirSourceID")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["systemPerformanceRatio", ["BuildingSync::SystemPerformanceRatio", XSD::QName.new(NsC_2019, "SystemPerformanceRatio")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::SpotExhaust,
    :schema_name => XSD::QName.new(NsC_2019, "SpotExhaust"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exhaustLocation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ExhaustLocation")], [0, 1]],
      ["ventilationRate", ["BuildingSync::VentilationRate", XSD::QName.new(NsC_2019, "VentilationRate")], [0, 1]],
      ["requiredVentilationRate", ["BuildingSync::RequiredVentilationRate", XSD::QName.new(NsC_2019, "RequiredVentilationRate")], [0, 1]],
      ["ventilationControlMethods", ["BuildingSync::VentilationControlMethods", XSD::QName.new(NsC_2019, "VentilationControlMethods")], [0, 1]],
      ["makeupAirSourceID", ["BuildingSync::MakeupAirSourceID", XSD::QName.new(NsC_2019, "MakeupAirSourceID")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["systemPerformanceRatio", ["BuildingSync::SystemPerformanceRatio", XSD::QName.new(NsC_2019, "SystemPerformanceRatio")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::NaturalVentilation::NaturalVentilationRate,
    :schema_name => XSD::QName.new(NsC_2019, "NaturalVentilationRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType::NaturalVentilation,
    :schema_name => XSD::QName.new(NsC_2019, "NaturalVentilation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["naturalVentilationRate", ["BuildingSync::OtherHVACSystemType::OtherHVACType::NaturalVentilation::NaturalVentilationRate", XSD::QName.new(NsC_2019, "NaturalVentilationRate")], [0, 1]],
      ["naturalVentilationMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "NaturalVentilationMethod")], [0, 1]],
      ["ventilationControlMethods", ["BuildingSync::VentilationControlMethods", XSD::QName.new(NsC_2019, "VentilationControlMethods")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::OtherHVACType,
    :schema_name => XSD::QName.new(NsC_2019, "OtherHVACType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["humidifier", ["BuildingSync::OtherHVACSystemType::OtherHVACType::Humidifier", XSD::QName.new(NsC_2019, "Humidifier")], [0, 1]],
      ["dehumidifier", ["BuildingSync::OtherHVACSystemType::OtherHVACType::Dehumidifier", XSD::QName.new(NsC_2019, "Dehumidifier")], [0, 1]],
      ["airCleaner", ["BuildingSync::OtherHVACSystemType::OtherHVACType::AirCleaner", XSD::QName.new(NsC_2019, "AirCleaner")], [0, 1]],
      ["mechanicalVentilation", ["BuildingSync::OtherHVACSystemType::OtherHVACType::MechanicalVentilation", XSD::QName.new(NsC_2019, "MechanicalVentilation")], [0, 1]],
      ["spotExhaust", ["BuildingSync::OtherHVACSystemType::OtherHVACType::SpotExhaust", XSD::QName.new(NsC_2019, "SpotExhaust")], [0, 1]],
      ["naturalVentilation", ["BuildingSync::OtherHVACSystemType::OtherHVACType::NaturalVentilation", XSD::QName.new(NsC_2019, "NaturalVentilation")], [0, 1]],
      ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::LinkedDeliveryIDs::LinkedDeliveryID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedDeliveryID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::OtherHVACSystemType::LinkedDeliveryIDs,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedDeliveryIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedDeliveryID", ["BuildingSync::OtherHVACSystemType::LinkedDeliveryIDs::LinkedDeliveryID[]", XSD::QName.new(NsC_2019, "LinkedDeliveryID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "LightingSystemType"),
    :schema_element => [
      ["lampType", ["BuildingSync::LightingSystemType::LampType", XSD::QName.new(NsC_2019, "LampType")], [0, 1]],
      ["ballastType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BallastType")], [0, 1]],
      ["inputVoltage", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "InputVoltage")], [0, 1]],
      ["installationType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "InstallationType")], [0, 1]],
      ["lightingDirection", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LightingDirection")], [0, 1]],
      ["dimmingCapability", ["BuildingSync::LightingSystemType::DimmingCapability", XSD::QName.new(NsC_2019, "DimmingCapability")], [0, 1]],
      ["percentPremisesServed", ["BuildingSync::LightingSystemType::PercentPremisesServed", XSD::QName.new(NsC_2019, "PercentPremisesServed")], [0, 1]],
      ["installedPower", ["BuildingSync::LightingSystemType::InstalledPower", XSD::QName.new(NsC_2019, "InstalledPower")], [0, 1]],
      ["lampPower", ["BuildingSync::LampPower", XSD::QName.new(NsC_2019, "LampPower")], [0, 1]],
      ["numberOfLampsPerLuminaire", ["BuildingSync::LightingSystemType::NumberOfLampsPerLuminaire", XSD::QName.new(NsC_2019, "NumberOfLampsPerLuminaire")], [0, 1]],
      ["numberOfLampsPerBallast", ["BuildingSync::LightingSystemType::NumberOfLampsPerBallast", XSD::QName.new(NsC_2019, "NumberOfLampsPerBallast")], [0, 1]],
      ["numberOfBallastsPerLuminaire", ["BuildingSync::LightingSystemType::NumberOfBallastsPerLuminaire", XSD::QName.new(NsC_2019, "NumberOfBallastsPerLuminaire")], [0, 1]],
      ["numberOfLuminaires", ["BuildingSync::LightingSystemType::NumberOfLuminaires", XSD::QName.new(NsC_2019, "NumberOfLuminaires")], [0, 1]],
      ["outsideLighting", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "OutsideLighting")], [0, 1]],
      ["reflectorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReflectorType")], [0, 1]],
      ["lightingEfficacy", ["BuildingSync::LightingSystemType::LightingEfficacy", XSD::QName.new(NsC_2019, "LightingEfficacy")], [0, 1]],
      ["workPlaneHeight", ["BuildingSync::LightingSystemType::WorkPlaneHeight", XSD::QName.new(NsC_2019, "WorkPlaneHeight")], [0, 1]],
      ["luminaireHeight", ["BuildingSync::LightingSystemType::LuminaireHeight", XSD::QName.new(NsC_2019, "LuminaireHeight")], [0, 1]],
      ["fixtureSpacing", ["BuildingSync::LightingSystemType::FixtureSpacing", XSD::QName.new(NsC_2019, "FixtureSpacing")], [0, 1]],
      ["ratedLampLife", ["BuildingSync::LightingSystemType::RatedLampLife", XSD::QName.new(NsC_2019, "RatedLampLife")], [0, 1]],
      ["controls", ["BuildingSync::LightingSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["lightingAutomationSystem", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "LightingAutomationSystem")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::Incandescent,
    :schema_name => XSD::QName.new(NsC_2019, "Incandescent"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::LinearFluorescent,
    :schema_name => XSD::QName.new(NsC_2019, "LinearFluorescent"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]],
      ["lampLength", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLength")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::CompactFluorescent,
    :schema_name => XSD::QName.new(NsC_2019, "CompactFluorescent"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]],
      ["fluorescentStartType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FluorescentStartType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::Halogen,
    :schema_name => XSD::QName.new(NsC_2019, "Halogen"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]],
      ["transformerNeeded", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "TransformerNeeded")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::HighIntensityDischarge,
    :schema_name => XSD::QName.new(NsC_2019, "HighIntensityDischarge"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]],
      ["metalHalideStartType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MetalHalideStartType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::SolidStateLighting,
    :schema_name => XSD::QName.new(NsC_2019, "SolidStateLighting"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lampLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "LampLabel")], [0, 1]],
      ["transformerNeeded", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "TransformerNeeded")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType::Induction,
    :schema_name => XSD::QName.new(NsC_2019, "Induction"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fluorescentStartType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FluorescentStartType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LampType,
    :schema_name => XSD::QName.new(NsC_2019, "LampType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["incandescent", ["BuildingSync::LightingSystemType::LampType::Incandescent", XSD::QName.new(NsC_2019, "Incandescent")], [0, 1]],
      ["linearFluorescent", ["BuildingSync::LightingSystemType::LampType::LinearFluorescent", XSD::QName.new(NsC_2019, "LinearFluorescent")], [0, 1]],
      ["compactFluorescent", ["BuildingSync::LightingSystemType::LampType::CompactFluorescent", XSD::QName.new(NsC_2019, "CompactFluorescent")], [0, 1]],
      ["halogen", ["BuildingSync::LightingSystemType::LampType::Halogen", XSD::QName.new(NsC_2019, "Halogen")], [0, 1]],
      ["highIntensityDischarge", ["BuildingSync::LightingSystemType::LampType::HighIntensityDischarge", XSD::QName.new(NsC_2019, "HighIntensityDischarge")], [0, 1]],
      ["solidStateLighting", ["BuildingSync::LightingSystemType::LampType::SolidStateLighting", XSD::QName.new(NsC_2019, "SolidStateLighting")], [0, 1]],
      ["induction", ["BuildingSync::LightingSystemType::LampType::Induction", XSD::QName.new(NsC_2019, "Induction")], [0, 1]],
      ["neon", ["BuildingSync::NeonType", XSD::QName.new(NsC_2019, "Neon")], [0, 1]],
      ["plasma", ["BuildingSync::PlasmaType", XSD::QName.new(NsC_2019, "Plasma")], [0, 1]],
      ["photoluminescent", ["BuildingSync::PhotoluminescentType", XSD::QName.new(NsC_2019, "Photoluminescent")], [0, 1]],
      ["selfLuminous", ["BuildingSync::SelfLuminousType", XSD::QName.new(NsC_2019, "SelfLuminous")], [0, 1]],
      ["otherCombination", ["BuildingSync::OtherCombinationType", XSD::QName.new(NsC_2019, "OtherCombination")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::DimmingCapability,
    :schema_name => XSD::QName.new(NsC_2019, "DimmingCapability"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["minimumDimmingLightFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "MinimumDimmingLightFraction")], [0, 1]],
      ["minimumDimmingPowerFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "MinimumDimmingPowerFraction")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::PercentPremisesServed,
    :schema_name => XSD::QName.new(NsC_2019, "PercentPremisesServed"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::InstalledPower,
    :schema_name => XSD::QName.new(NsC_2019, "InstalledPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::NumberOfLampsPerLuminaire,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfLampsPerLuminaire"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::NumberOfLampsPerBallast,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfLampsPerBallast"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::NumberOfBallastsPerLuminaire,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfBallastsPerLuminaire"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::NumberOfLuminaires,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfLuminaires"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LightingEfficacy,
    :schema_name => XSD::QName.new(NsC_2019, "LightingEfficacy"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::WorkPlaneHeight,
    :schema_name => XSD::QName.new(NsC_2019, "WorkPlaneHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::LuminaireHeight,
    :schema_name => XSD::QName.new(NsC_2019, "LuminaireHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::FixtureSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "FixtureSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::RatedLampLife,
    :schema_name => XSD::QName.new(NsC_2019, "RatedLampLife"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlLightingType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "DomesticHotWaterSystemType"),
    :schema_element => [
      ["domesticHotWaterType", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType", XSD::QName.new(NsC_2019, "DomesticHotWaterType")], [0, 1]],
      ["domesticHotWaterSystemNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DomesticHotWaterSystemNotes")], [0, 1]],
      ["recirculation", ["BuildingSync::DomesticHotWaterSystemType::Recirculation", XSD::QName.new(NsC_2019, "Recirculation")], [0, 1]],
      ["hotWaterDistributionType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HotWaterDistributionType")], [0, 1]],
      ["waterHeaterEfficiencyType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterHeaterEfficiencyType")], [0, 1]],
      ["waterHeaterEfficiency", ["BuildingSync::DomesticHotWaterSystemType::WaterHeaterEfficiency", XSD::QName.new(NsC_2019, "WaterHeaterEfficiency")], [0, 1]],
      ["dailyHotWaterDraw", ["BuildingSync::DomesticHotWaterSystemType::DailyHotWaterDraw", XSD::QName.new(NsC_2019, "DailyHotWaterDraw")], [0, 1]],
      ["hotWaterSetpointTemperature", ["BuildingSync::DomesticHotWaterSystemType::HotWaterSetpointTemperature", XSD::QName.new(NsC_2019, "HotWaterSetpointTemperature")], [0, 1]],
      ["parasiticFuelConsumptionRate", ["BuildingSync::DomesticHotWaterSystemType::ParasiticFuelConsumptionRate", XSD::QName.new(NsC_2019, "ParasiticFuelConsumptionRate")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["controls", ["BuildingSync::DomesticHotWaterSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["domesticHotWaterSystemCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "DomesticHotWaterSystemCondition")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Direct::DirectTankHeatingSource,
    :schema_name => XSD::QName.new(NsC_2019, "DirectTankHeatingSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["electricResistance", ["BuildingSync::ElectricResistanceType", XSD::QName.new(NsC_2019, "ElectricResistance")], [0, 1]],
      ["combustion", ["BuildingSync::Combustion", XSD::QName.new(NsC_2019, "Combustion")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Direct,
    :schema_name => XSD::QName.new(NsC_2019, "Direct"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["directTankHeatingSource", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Direct::DirectTankHeatingSource", XSD::QName.new(NsC_2019, "DirectTankHeatingSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::HeatPump::HPWHMinimumAirTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HPWHMinimumAirTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::HeatPump,
    :schema_name => XSD::QName.new(NsC_2019, "HeatPump"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ratedHeatPumpSensibleHeatRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "RatedHeatPumpSensibleHeatRatio")], [0, 1]],
      ["hPWHMinimumAirTemperature", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::HeatPump::HPWHMinimumAirTemperature", XSD::QName.new(NsC_2019, "HPWHMinimumAirTemperature")], [0, 1]],
      ["refrigerant", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Refrigerant")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorArea,
    :schema_name => XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorAzimuth,
    :schema_name => XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorAzimuth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorTilt,
    :schema_name => XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorTilt"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemStorageVolume,
    :schema_name => XSD::QName.new(NsC_2019, "SolarThermalSystemStorageVolume"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar,
    :schema_name => XSD::QName.new(NsC_2019, "Solar"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["solarThermalSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SolarThermalSystemType")], [0, 1]],
      ["solarThermalSystemCollectorArea", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorArea", XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorArea")], [0, 1]],
      ["solarThermalSystemCollectorLoopType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorLoopType")], [0, 1]],
      ["solarThermalSystemCollectorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorType")], [0, 1]],
      ["solarThermalSystemCollectorAzimuth", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorAzimuth", XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorAzimuth")], [0, 1]],
      ["solarThermalSystemCollectorTilt", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemCollectorTilt", XSD::QName.new(NsC_2019, "SolarThermalSystemCollectorTilt")], [0, 1]],
      ["solarThermalSystemStorageVolume", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::SolarThermalSystemStorageVolume", XSD::QName.new(NsC_2019, "SolarThermalSystemStorageVolume")], [0, 1]],
      ["controls", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::SpaceHeatingSystem::HeatingPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::SpaceHeatingSystem,
    :schema_name => XSD::QName.new(NsC_2019, "SpaceHeatingSystem"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatingPlantID", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::SpaceHeatingSystem::HeatingPlantID", XSD::QName.new(NsC_2019, "HeatingPlantID")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource,
    :schema_name => XSD::QName.new(NsC_2019, "IndirectTankHeatingSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["heatPump", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::HeatPump", XSD::QName.new(NsC_2019, "HeatPump")], [0, 1]],
      ["solar", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::Solar", XSD::QName.new(NsC_2019, "Solar")], [0, 1]],
      ["spaceHeatingSystem", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource::SpaceHeatingSystem", XSD::QName.new(NsC_2019, "SpaceHeatingSystem")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect,
    :schema_name => XSD::QName.new(NsC_2019, "Indirect"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["indirectTankHeatingSource", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect::IndirectTankHeatingSource", XSD::QName.new(NsC_2019, "IndirectTankHeatingSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType,
    :schema_name => XSD::QName.new(NsC_2019, "TankHeatingType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["direct", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Direct", XSD::QName.new(NsC_2019, "Direct")], [0, 1]],
      ["indirect", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType::Indirect", XSD::QName.new(NsC_2019, "Indirect")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankVolume,
    :schema_name => XSD::QName.new(NsC_2019, "TankVolume"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeight,
    :schema_name => XSD::QName.new(NsC_2019, "TankHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankPerimeter,
    :schema_name => XSD::QName.new(NsC_2019, "TankPerimeter"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::RecoveryEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "RecoveryEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::StorageTankInsulationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "StorageTankInsulationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::StorageTankInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "StorageTankInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::OffCycleHeatLossCoefficient,
    :schema_name => XSD::QName.new(NsC_2019, "OffCycleHeatLossCoefficient"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank,
    :schema_name => XSD::QName.new(NsC_2019, "StorageTank"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tankHeatingType", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeatingType", XSD::QName.new(NsC_2019, "TankHeatingType")], [0, 1]],
      ["tankVolume", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankVolume", XSD::QName.new(NsC_2019, "TankVolume")], [0, 1]],
      ["tankHeight", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankHeight", XSD::QName.new(NsC_2019, "TankHeight")], [0, 1]],
      ["tankPerimeter", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::TankPerimeter", XSD::QName.new(NsC_2019, "TankPerimeter")], [0, 1]],
      ["recoveryEfficiency", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::RecoveryEfficiency", XSD::QName.new(NsC_2019, "RecoveryEfficiency")], [0, 1]],
      ["storageTankInsulationRValue", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::StorageTankInsulationRValue", XSD::QName.new(NsC_2019, "StorageTankInsulationRValue")], [0, 1]],
      ["storageTankInsulationThickness", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::StorageTankInsulationThickness", XSD::QName.new(NsC_2019, "StorageTankInsulationThickness")], [0, 1]],
      ["offCycleHeatLossCoefficient", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank::OffCycleHeatLossCoefficient", XSD::QName.new(NsC_2019, "OffCycleHeatLossCoefficient")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::Instantaneous::InstantaneousWaterHeatingSource,
    :schema_name => XSD::QName.new(NsC_2019, "InstantaneousWaterHeatingSource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["electricResistance", ["BuildingSync::ElectricResistanceType", XSD::QName.new(NsC_2019, "ElectricResistance")], [0, 1]],
      ["combustion", ["BuildingSync::Combustion", XSD::QName.new(NsC_2019, "Combustion")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::Instantaneous,
    :schema_name => XSD::QName.new(NsC_2019, "Instantaneous"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["instantaneousWaterHeatingSource", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::Instantaneous::InstantaneousWaterHeatingSource", XSD::QName.new(NsC_2019, "InstantaneousWaterHeatingSource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::HeatExchanger,
    :schema_name => XSD::QName.new(NsC_2019, "HeatExchanger"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType,
    :schema_name => XSD::QName.new(NsC_2019, "DomesticHotWaterType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["storageTank", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::StorageTank", XSD::QName.new(NsC_2019, "StorageTank")], [0, 1]],
      ["instantaneous", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::Instantaneous", XSD::QName.new(NsC_2019, "Instantaneous")], [0, 1]],
      ["heatExchanger", ["BuildingSync::DomesticHotWaterSystemType::DomesticHotWaterType::HeatExchanger", XSD::QName.new(NsC_2019, "HeatExchanger")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationLoopCount,
    :schema_name => XSD::QName.new(NsC_2019, "RecirculationLoopCount"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "RecirculationFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationEnergyLossRate,
    :schema_name => XSD::QName.new(NsC_2019, "RecirculationEnergyLossRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::Recirculation,
    :schema_name => XSD::QName.new(NsC_2019, "Recirculation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["recirculationLoopCount", ["BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationLoopCount", XSD::QName.new(NsC_2019, "RecirculationLoopCount")], [0, 1]],
      ["recirculationFlowRate", ["BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationFlowRate", XSD::QName.new(NsC_2019, "RecirculationFlowRate")], [0, 1]],
      ["recirculationControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RecirculationControlType")], [0, 1]],
      ["pipeInsulationThickness", ["BuildingSync::PipeInsulationThickness", XSD::QName.new(NsC_2019, "PipeInsulationThickness")], [0, 1]],
      ["pipeLocation", ["BuildingSync::PipeLocation", XSD::QName.new(NsC_2019, "PipeLocation")], [0, 1]],
      ["recirculationEnergyLossRate", ["BuildingSync::DomesticHotWaterSystemType::Recirculation::RecirculationEnergyLossRate", XSD::QName.new(NsC_2019, "RecirculationEnergyLossRate")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::WaterHeaterEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "WaterHeaterEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::DailyHotWaterDraw,
    :schema_name => XSD::QName.new(NsC_2019, "DailyHotWaterDraw"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::HotWaterSetpointTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HotWaterSetpointTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::ParasiticFuelConsumptionRate,
    :schema_name => XSD::QName.new(NsC_2019, "ParasiticFuelConsumptionRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DomesticHotWaterSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CookingSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "CookingSystemType"),
    :schema_element => [
      ["typeOfCookingEquipment", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TypeOfCookingEquipment")], [0, 1]],
      ["numberOfMeals", ["BuildingSync::CookingSystemType::NumberOfMeals", XSD::QName.new(NsC_2019, "NumberOfMeals")], [0, 1]],
      ["cookingEnergyPerMeal", ["BuildingSync::CookingSystemType::CookingEnergyPerMeal", XSD::QName.new(NsC_2019, "CookingEnergyPerMeal")], [0, 1]],
      ["dailyWaterUse", ["BuildingSync::CookingSystemType::DailyWaterUse", XSD::QName.new(NsC_2019, "DailyWaterUse")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CookingSystemType::NumberOfMeals,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfMeals"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CookingSystemType::CookingEnergyPerMeal,
    :schema_name => XSD::QName.new(NsC_2019, "CookingEnergyPerMeal"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CookingSystemType::DailyWaterUse,
    :schema_name => XSD::QName.new(NsC_2019, "DailyWaterUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "RefrigerationSystemType"),
    :schema_element => [
      ["refrigerationSystemCategory", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory", XSD::QName.new(NsC_2019, "RefrigerationSystemCategory")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::NetRefrigerationCapacity,
    :schema_name => XSD::QName.new(NsC_2019, "NetRefrigerationCapacity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::TotalHeatRejection,
    :schema_name => XSD::QName.new(NsC_2019, "TotalHeatRejection"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::SuctionVaporTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "SuctionVaporTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::NumberOfRefrigerantReturnLines,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfRefrigerantReturnLines"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::CaseReturnLineDiameter,
    :schema_name => XSD::QName.new(NsC_2019, "CaseReturnLineDiameter"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor::CompressorUnloader::CompressorUnloaderStages,
    :schema_name => XSD::QName.new(NsC_2019, "CompressorUnloaderStages"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor::CompressorUnloader,
    :schema_name => XSD::QName.new(NsC_2019, "CompressorUnloader"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["compressorUnloaderStages", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor::CompressorUnloader::CompressorUnloaderStages", XSD::QName.new(NsC_2019, "CompressorUnloaderStages")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationCompressor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["refrigerationCompressorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RefrigerationCompressorType")], [0, 1]],
      ["compressorUnloader", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor::CompressorUnloader", XSD::QName.new(NsC_2019, "CompressorUnloader")], [0, 1]],
      ["desuperheatValve", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "DesuperheatValve")], [0, 1]],
      ["crankcaseHeater", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "CrankcaseHeater")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem,
    :schema_name => XSD::QName.new(NsC_2019, "CentralRefrigerationSystem"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["netRefrigerationCapacity", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::NetRefrigerationCapacity", XSD::QName.new(NsC_2019, "NetRefrigerationCapacity")], [0, 1]],
      ["totalHeatRejection", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::TotalHeatRejection", XSD::QName.new(NsC_2019, "TotalHeatRejection")], [0, 1]],
      ["refrigerant", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Refrigerant")], [0, 1]],
      ["suctionVaporTemperature", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::SuctionVaporTemperature", XSD::QName.new(NsC_2019, "SuctionVaporTemperature")], [0, 1]],
      ["numberOfRefrigerantReturnLines", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::NumberOfRefrigerantReturnLines", XSD::QName.new(NsC_2019, "NumberOfRefrigerantReturnLines")], [0, 1]],
      ["evaporatorPressureRegulators", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "EvaporatorPressureRegulators")], [0, 1]],
      ["refrigerantSubcooler", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "RefrigerantSubcooler")], [0, 1]],
      ["caseReturnLineDiameter", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::CaseReturnLineDiameter", XSD::QName.new(NsC_2019, "CaseReturnLineDiameter")], [0, 1]],
      ["refrigerationCompressor", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem::RefrigerationCompressor", XSD::QName.new(NsC_2019, "RefrigerationCompressor")], [0, 1]],
      ["condenserPlantIDs", ["BuildingSync::CondenserPlantIDs", XSD::QName.new(NsC_2019, "CondenserPlantIDs")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::RefrigerationUnitSize,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationUnitSize"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::AntiSweatHeaters::AntiSweatHeaterPower,
    :schema_name => XSD::QName.new(NsC_2019, "AntiSweatHeaterPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::AntiSweatHeaters,
    :schema_name => XSD::QName.new(NsC_2019, "AntiSweatHeaters"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["antiSweatHeaterPower", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::AntiSweatHeaters::AntiSweatHeaterPower", XSD::QName.new(NsC_2019, "AntiSweatHeaterPower")], [0, 1]],
      ["antiSweatHeaterControls", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "AntiSweatHeaterControls")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::RefrigerationEnergy,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationEnergy"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationUnit"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["refrigerationUnitType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RefrigerationUnitType")], [0, 1]],
      ["doorConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DoorConfiguration")], [0, 1]],
      ["refrigeratedCaseDoors", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "RefrigeratedCaseDoors")], [0, 1]],
      ["caseDoorOrientation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CaseDoorOrientation")], [0, 1]],
      ["defrostingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DefrostingType")], [0, 1]],
      ["lampPower", ["BuildingSync::LampPower", XSD::QName.new(NsC_2019, "LampPower")], [0, 1]],
      ["refrigerationUnitSize", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::RefrigerationUnitSize", XSD::QName.new(NsC_2019, "RefrigerationUnitSize")], [0, 1]],
      ["antiSweatHeaters", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::AntiSweatHeaters", XSD::QName.new(NsC_2019, "AntiSweatHeaters")], [0, 1]],
      ["refrigerationEnergy", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit::RefrigerationEnergy", XSD::QName.new(NsC_2019, "RefrigerationEnergy")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationSystemCategory"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["centralRefrigerationSystem", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::CentralRefrigerationSystem", XSD::QName.new(NsC_2019, "CentralRefrigerationSystem")], [0, 1]],
      ["refrigerationUnit", ["BuildingSync::RefrigerationSystemType::RefrigerationSystemCategory::RefrigerationUnit", XSD::QName.new(NsC_2019, "RefrigerationUnit")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DishwasherSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "DishwasherSystemType"),
    :schema_element => [
      ["dishwasherMachineType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DishwasherMachineType")], [0, 1]],
      ["dishwasherConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DishwasherConfiguration")], [0, 1]],
      ["dishwasherClassification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DishwasherClassification")], [0, 1]],
      ["dishwasherLoadsPerWeek", ["BuildingSync::DishwasherSystemType::DishwasherLoadsPerWeek", XSD::QName.new(NsC_2019, "DishwasherLoadsPerWeek")], [0, 1]],
      ["dishwasherEnergyFactor", ["BuildingSync::DishwasherSystemType::DishwasherEnergyFactor", XSD::QName.new(NsC_2019, "DishwasherEnergyFactor")], [0, 1]],
      ["dishwasherHotWaterUse", ["BuildingSync::DishwasherSystemType::DishwasherHotWaterUse", XSD::QName.new(NsC_2019, "DishwasherHotWaterUse")], [0, 1]],
      ["controls", ["BuildingSync::DishwasherSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DishwasherSystemType::DishwasherLoadsPerWeek,
    :schema_name => XSD::QName.new(NsC_2019, "DishwasherLoadsPerWeek"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DishwasherSystemType::DishwasherEnergyFactor,
    :schema_name => XSD::QName.new(NsC_2019, "DishwasherEnergyFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DishwasherSystemType::DishwasherHotWaterUse,
    :schema_name => XSD::QName.new(NsC_2019, "DishwasherHotWaterUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DishwasherSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType,
    :schema_type => XSD::QName.new(NsC_2019, "LaundrySystemType"),
    :schema_element => [
      ["laundryType", ["BuildingSync::LaundrySystemType::LaundryType", XSD::QName.new(NsC_2019, "LaundryType")], [0, 1]],
      ["quantityOfLaundry", ["BuildingSync::LaundrySystemType::QuantityOfLaundry", XSD::QName.new(NsC_2019, "QuantityOfLaundry")], [0, 1]],
      ["laundryEquipmentUsage", ["BuildingSync::LaundrySystemType::LaundryEquipmentUsage", XSD::QName.new(NsC_2019, "LaundryEquipmentUsage")], [0, 1]],
      ["controls", ["BuildingSync::LaundrySystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::LaundryType::Washer,
    :schema_name => XSD::QName.new(NsC_2019, "Washer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["clothesWasherClassification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClothesWasherClassification")], [0, 1]],
      ["clothesWasherLoaderType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClothesWasherLoaderType")], [0, 1]],
      ["clothesWasherModifiedEnergyFactor", ["BuildingSync::ClothesWasherModifiedEnergyFactor", XSD::QName.new(NsC_2019, "ClothesWasherModifiedEnergyFactor")], [0, 1]],
      ["clothesWasherWaterFactor", ["BuildingSync::ClothesWasherWaterFactor", XSD::QName.new(NsC_2019, "ClothesWasherWaterFactor")], [0, 1]],
      ["clothesWasherCapacity", ["BuildingSync::ClothesWasherCapacity", XSD::QName.new(NsC_2019, "ClothesWasherCapacity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::LaundryType::Dryer,
    :schema_name => XSD::QName.new(NsC_2019, "Dryer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["dryerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DryerType")], [0, 1]],
      ["dryerElectricEnergyUsePerLoad", ["BuildingSync::DryerElectricEnergyUsePerLoad", XSD::QName.new(NsC_2019, "DryerElectricEnergyUsePerLoad")], [0, 1]],
      ["dryerGasEnergyUsePerLoad", ["BuildingSync::DryerGasEnergyUsePerLoad", XSD::QName.new(NsC_2019, "DryerGasEnergyUsePerLoad")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::LaundryType::Combination,
    :schema_name => XSD::QName.new(NsC_2019, "Combination"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["washerDryerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WasherDryerType")], [0, 1]],
      ["clothesWasherClassification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClothesWasherClassification")], [0, 1]],
      ["clothesWasherLoaderType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClothesWasherLoaderType")], [0, 1]],
      ["clothesWasherModifiedEnergyFactor", ["BuildingSync::ClothesWasherModifiedEnergyFactor", XSD::QName.new(NsC_2019, "ClothesWasherModifiedEnergyFactor")], [0, 1]],
      ["clothesWasherWaterFactor", ["BuildingSync::ClothesWasherWaterFactor", XSD::QName.new(NsC_2019, "ClothesWasherWaterFactor")], [0, 1]],
      ["clothesWasherCapacity", ["BuildingSync::ClothesWasherCapacity", XSD::QName.new(NsC_2019, "ClothesWasherCapacity")], [0, 1]],
      ["dryerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DryerType")], [0, 1]],
      ["dryerElectricEnergyUsePerLoad", ["BuildingSync::DryerElectricEnergyUsePerLoad", XSD::QName.new(NsC_2019, "DryerElectricEnergyUsePerLoad")], [0, 1]],
      ["dryerGasEnergyUsePerLoad", ["BuildingSync::DryerGasEnergyUsePerLoad", XSD::QName.new(NsC_2019, "DryerGasEnergyUsePerLoad")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::LaundryType,
    :schema_name => XSD::QName.new(NsC_2019, "LaundryType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["washer", ["BuildingSync::LaundrySystemType::LaundryType::Washer", XSD::QName.new(NsC_2019, "Washer")], [0, 1]],
      ["dryer", ["BuildingSync::LaundrySystemType::LaundryType::Dryer", XSD::QName.new(NsC_2019, "Dryer")], [0, 1]],
      ["combination", ["BuildingSync::LaundrySystemType::LaundryType::Combination", XSD::QName.new(NsC_2019, "Combination")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::QuantityOfLaundry,
    :schema_name => XSD::QName.new(NsC_2019, "QuantityOfLaundry"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::LaundryEquipmentUsage,
    :schema_name => XSD::QName.new(NsC_2019, "LaundryEquipmentUsage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LaundrySystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "PumpSystemType"),
    :schema_element => [
      ["pumpEfficiency", ["BuildingSync::PumpSystemType::PumpEfficiency", XSD::QName.new(NsC_2019, "PumpEfficiency")], [0, 1]],
      ["pumpMaximumFlowRate", ["BuildingSync::PumpSystemType::PumpMaximumFlowRate", XSD::QName.new(NsC_2019, "PumpMaximumFlowRate")], [0, 1]],
      ["pumpMinimumFlowRate", ["BuildingSync::PumpSystemType::PumpMinimumFlowRate", XSD::QName.new(NsC_2019, "PumpMinimumFlowRate")], [0, 1]],
      ["pumpInstalledFlowRate", ["BuildingSync::PumpSystemType::PumpInstalledFlowRate", XSD::QName.new(NsC_2019, "PumpInstalledFlowRate")], [0, 1]],
      ["pumpPowerDemand", ["BuildingSync::PumpSystemType::PumpPowerDemand", XSD::QName.new(NsC_2019, "PumpPowerDemand")], [0, 1]],
      ["pumpControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PumpControlType")], [0, 1]],
      ["pumpOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PumpOperation")], [0, 1]],
      ["pumpingConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PumpingConfiguration")], [0, 1]],
      ["pumpApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PumpApplication")], [0, 1]],
      ["controls", ["BuildingSync::PumpSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedSystemIDs", ["BuildingSync::LinkedSystemIDs", XSD::QName.new(NsC_2019, "LinkedSystemIDs")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::PumpEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "PumpEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::PumpMaximumFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "PumpMaximumFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::PumpMinimumFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "PumpMinimumFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::PumpInstalledFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "PumpInstalledFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::PumpPowerDemand,
    :schema_name => XSD::QName.new(NsC_2019, "PumpPowerDemand"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PumpSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FanSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "FanSystemType"),
    :schema_element => [
      ["fanEfficiency", ["BuildingSync::FanSystemType::FanEfficiency", XSD::QName.new(NsC_2019, "FanEfficiency")], [0, 1]],
      ["fanSize", ["BuildingSync::FanSystemType::FanSize", XSD::QName.new(NsC_2019, "FanSize")], [0, 1]],
      [ :choice,
        ["installedFlowRate", ["BuildingSync::FanSystemType::InstalledFlowRate", XSD::QName.new(NsC_2019, "InstalledFlowRate")], [0, 1]],
        ["fanInstalledFlowRate", ["BuildingSync::FanSystemType::FanInstalledFlowRate", XSD::QName.new(NsC_2019, "FanInstalledFlowRate")], [0, 1]]
      ],
      ["minimumFlowRate", ["BuildingSync::FanSystemType::MinimumFlowRate", XSD::QName.new(NsC_2019, "MinimumFlowRate")], [0, 1]],
      ["maximumFanPower", ["BuildingSync::FanSystemType::MaximumFanPower", XSD::QName.new(NsC_2019, "MaximumFanPower")], [0, 1]],
      ["fanPowerMinimumRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "FanPowerMinimumRatio")], [0, 1]],
      ["fanType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FanType")], [0, 1]],
      ["beltType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BeltType")], [0, 1]],
      ["fanApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FanApplication")], [0, 1]],
      ["fanControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FanControlType")], [0, 1]],
      ["fanPlacement", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FanPlacement")], [0, 1]],
      ["motorLocationRelativeToAirStream", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "MotorLocationRelativeToAirStream")], [0, 1]],
      ["designStaticPressure", ["BuildingSync::FanSystemType::DesignStaticPressure", XSD::QName.new(NsC_2019, "DesignStaticPressure")], [0, 1]],
      ["numberOfDiscreteFanSpeedsCooling", ["BuildingSync::FanSystemType::NumberOfDiscreteFanSpeedsCooling", XSD::QName.new(NsC_2019, "NumberOfDiscreteFanSpeedsCooling")], [0, 1]],
      ["numberOfDiscreteFanSpeedsHeating", ["BuildingSync::FanSystemType::NumberOfDiscreteFanSpeedsHeating", XSD::QName.new(NsC_2019, "NumberOfDiscreteFanSpeedsHeating")], [0, 1]],
      ["controls", ["BuildingSync::FanSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["linkedSystemIDs", ["BuildingSync::LinkedSystemIDs", XSD::QName.new(NsC_2019, "LinkedSystemIDs")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::FanEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "FanEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::FanSize,
    :schema_name => XSD::QName.new(NsC_2019, "FanSize"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::InstalledFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "InstalledFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::FanInstalledFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "FanInstalledFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::MinimumFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "MinimumFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::MaximumFanPower,
    :schema_name => XSD::QName.new(NsC_2019, "MaximumFanPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::DesignStaticPressure,
    :schema_name => XSD::QName.new(NsC_2019, "DesignStaticPressure"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::NumberOfDiscreteFanSpeedsCooling,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfDiscreteFanSpeedsCooling"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::NumberOfDiscreteFanSpeedsHeating,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfDiscreteFanSpeedsHeating"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "MotorSystemType"),
    :schema_element => [
      ["motorRPM", ["BuildingSync::MotorSystemType::MotorRPM", XSD::QName.new(NsC_2019, "MotorRPM")], [0, 1]],
      ["motorBrakeHP", ["BuildingSync::MotorSystemType::MotorBrakeHP", XSD::QName.new(NsC_2019, "MotorBrakeHP")], [0, 1]],
      ["motorHP", ["BuildingSync::MotorSystemType::MotorHP", XSD::QName.new(NsC_2019, "MotorHP")], [0, 1]],
      ["motorEfficiency", ["BuildingSync::MotorSystemType::MotorEfficiency", XSD::QName.new(NsC_2019, "MotorEfficiency")], [0, 1]],
      ["driveEfficiency", ["BuildingSync::MotorSystemType::DriveEfficiency", XSD::QName.new(NsC_2019, "DriveEfficiency")], [0, 1]],
      ["fullLoadAmps", ["BuildingSync::MotorSystemType::FullLoadAmps", XSD::QName.new(NsC_2019, "FullLoadAmps")], [0, 1]],
      ["motorPoleCount", ["BuildingSync::MotorSystemType::MotorPoleCount", XSD::QName.new(NsC_2019, "MotorPoleCount")], [0, 1]],
      ["motorEnclosureType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MotorEnclosureType")], [0, 1]],
      ["motorApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "MotorApplication")], [0, 1]],
      ["controls", ["BuildingSync::MotorSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["linkedSystemIDs", ["BuildingSync::LinkedSystemIDs", XSD::QName.new(NsC_2019, "LinkedSystemIDs")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::MotorRPM,
    :schema_name => XSD::QName.new(NsC_2019, "MotorRPM"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::MotorBrakeHP,
    :schema_name => XSD::QName.new(NsC_2019, "MotorBrakeHP"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::MotorHP,
    :schema_name => XSD::QName.new(NsC_2019, "MotorHP"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::MotorEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "MotorEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::DriveEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "DriveEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::FullLoadAmps,
    :schema_name => XSD::QName.new(NsC_2019, "FullLoadAmps"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::MotorPoleCount,
    :schema_name => XSD::QName.new(NsC_2019, "MotorPoleCount"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MotorSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType,
    :schema_type => XSD::QName.new(NsC_2019, "HeatRecoverySystemType"),
    :schema_element => [
      ["heatRecoveryEfficiency", ["BuildingSync::HeatRecoverySystemType::HeatRecoveryEfficiency", XSD::QName.new(NsC_2019, "HeatRecoveryEfficiency")], [0, 1]],
      ["energyRecoveryEfficiency", ["BuildingSync::HeatRecoverySystemType::EnergyRecoveryEfficiency", XSD::QName.new(NsC_2019, "EnergyRecoveryEfficiency")], [0, 1]],
      ["heatRecoveryType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatRecoveryType")], [0, 1]],
      ["systemIDReceivingHeat", ["BuildingSync::HeatRecoverySystemType::SystemIDReceivingHeat", XSD::QName.new(NsC_2019, "SystemIDReceivingHeat")], [0, 1]],
      ["systemIDProvidingHeat", ["BuildingSync::HeatRecoverySystemType::SystemIDProvidingHeat", XSD::QName.new(NsC_2019, "SystemIDProvidingHeat")], [0, 1]],
      ["controls", ["BuildingSync::HeatRecoverySystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType::HeatRecoveryEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "HeatRecoveryEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType::EnergyRecoveryEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyRecoveryEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType::SystemIDReceivingHeat,
    :schema_name => XSD::QName.new(NsC_2019, "SystemIDReceivingHeat"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType::SystemIDProvidingHeat,
    :schema_name => XSD::QName.new(NsC_2019, "SystemIDProvidingHeat"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoverySystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WallSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "WallSystemType"),
    :schema_element => [
      ["exteriorWallConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "ExteriorWallConstruction")], [0, 1]],
      ["exteriorWallFinish", ["BuildingSync::Finish", XSD::QName.new(NsC_2019, "ExteriorWallFinish")], [0, 1]],
      ["exteriorWallColor", ["BuildingSync::Color", XSD::QName.new(NsC_2019, "ExteriorWallColor")], [0, 1]],
      ["wallInsulations", ["BuildingSync::WallSystemType::WallInsulations", XSD::QName.new(NsC_2019, "WallInsulations")], [0, 1]],
      ["wallRValue", ["BuildingSync::WallSystemType::WallRValue", XSD::QName.new(NsC_2019, "WallRValue")], [0, 1]],
      ["wallUFactor", ["BuildingSync::WallSystemType::WallUFactor", XSD::QName.new(NsC_2019, "WallUFactor")], [0, 1]],
      ["wallFramingMaterial", ["BuildingSync::FramingMaterial", XSD::QName.new(NsC_2019, "WallFramingMaterial")], [0, 1]],
      ["wallFramingSpacing", ["BuildingSync::WallSystemType::WallFramingSpacing", XSD::QName.new(NsC_2019, "WallFramingSpacing")], [0, 1]],
      ["wallFramingDepth", ["BuildingSync::WallSystemType::WallFramingDepth", XSD::QName.new(NsC_2019, "WallFramingDepth")], [0, 1]],
      ["wallFramingFactor", ["BuildingSync::WallSystemType::WallFramingFactor", XSD::QName.new(NsC_2019, "WallFramingFactor")], [0, 1]],
      ["cMUFill", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CMUFill")], [0, 1]],
      ["wallExteriorSolarAbsorptance", ["BuildingSync::WallSystemType::WallExteriorSolarAbsorptance", XSD::QName.new(NsC_2019, "WallExteriorSolarAbsorptance")], [0, 1]],
      ["wallExteriorThermalAbsorptance", ["BuildingSync::WallSystemType::WallExteriorThermalAbsorptance", XSD::QName.new(NsC_2019, "WallExteriorThermalAbsorptance")], [0, 1]],
      ["interiorVisibleAbsorptance", ["BuildingSync::InteriorVisibleAbsorptance", XSD::QName.new(NsC_2019, "InteriorVisibleAbsorptance")], [0, 1]],
      ["exteriorRoughness", ["BuildingSync::ExteriorRoughnessType", XSD::QName.new(NsC_2019, "ExteriorRoughness")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallInsulations::WallInsulation::WallInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "WallInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallInsulations::WallInsulation::WallInsulationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "WallInsulationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallInsulations::WallInsulation,
    :schema_name => XSD::QName.new(NsC_2019, "WallInsulation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["wallInsulationApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WallInsulationApplication")], [0, 1]],
      ["wallInsulationMaterial", ["BuildingSync::InsulationMaterialType", XSD::QName.new(NsC_2019, "WallInsulationMaterial")], [0, 1]],
      ["wallInsulationThickness", ["BuildingSync::WallSystemType::WallInsulations::WallInsulation::WallInsulationThickness", XSD::QName.new(NsC_2019, "WallInsulationThickness")], [0, 1]],
      ["wallInsulationContinuity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WallInsulationContinuity")], [0, 1]],
      ["wallInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "WallInsulationCondition")], [0, 1]],
      ["wallInsulationLocation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WallInsulationLocation")], [0, 1]],
      ["wallInsulationRValue", ["BuildingSync::WallSystemType::WallInsulations::WallInsulation::WallInsulationRValue", XSD::QName.new(NsC_2019, "WallInsulationRValue")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallInsulations,
    :schema_name => XSD::QName.new(NsC_2019, "WallInsulations"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["wallInsulation", ["BuildingSync::WallSystemType::WallInsulations::WallInsulation[]", XSD::QName.new(NsC_2019, "WallInsulation")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallRValue,
    :schema_name => XSD::QName.new(NsC_2019, "WallRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "WallUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallFramingSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "WallFramingSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallFramingDepth,
    :schema_name => XSD::QName.new(NsC_2019, "WallFramingDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallFramingFactor,
    :schema_name => XSD::QName.new(NsC_2019, "WallFramingFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallExteriorSolarAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "WallExteriorSolarAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallSystemType::WallExteriorThermalAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "WallExteriorThermalAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "CeilingSystemType"),
    :schema_element => [
      ["ceilingConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "CeilingConstruction")], [0, 1]],
      ["ceilingFinish", ["BuildingSync::Finish", XSD::QName.new(NsC_2019, "CeilingFinish")], [0, 1]],
      ["ceilingColor", ["BuildingSync::Color", XSD::QName.new(NsC_2019, "CeilingColor")], [0, 1]],
      ["ceilingInsulations", ["BuildingSync::CeilingSystemType::CeilingInsulations", XSD::QName.new(NsC_2019, "CeilingInsulations")], [0, 1]],
      ["ceilingRValue", ["BuildingSync::CeilingSystemType::CeilingRValue", XSD::QName.new(NsC_2019, "CeilingRValue")], [0, 1]],
      ["ceilingUFactor", ["BuildingSync::CeilingSystemType::CeilingUFactor", XSD::QName.new(NsC_2019, "CeilingUFactor")], [0, 1]],
      ["ceilingFramingMaterial", ["BuildingSync::FramingMaterial", XSD::QName.new(NsC_2019, "CeilingFramingMaterial")], [0, 1]],
      ["ceilingFramingSpacing", ["BuildingSync::CeilingSystemType::CeilingFramingSpacing", XSD::QName.new(NsC_2019, "CeilingFramingSpacing")], [0, 1]],
      ["ceilingFramingDepth", ["BuildingSync::CeilingSystemType::CeilingFramingDepth", XSD::QName.new(NsC_2019, "CeilingFramingDepth")], [0, 1]],
      ["ceilingFramingFactor", ["BuildingSync::CeilingSystemType::CeilingFramingFactor", XSD::QName.new(NsC_2019, "CeilingFramingFactor")], [0, 1]],
      ["ceilingVisibleAbsorptance", ["BuildingSync::CeilingSystemType::CeilingVisibleAbsorptance", XSD::QName.new(NsC_2019, "CeilingVisibleAbsorptance")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingInsulations::CeilingInsulation::CeilingInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingInsulations::CeilingInsulation,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingInsulation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceilingInsulationApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CeilingInsulationApplication")], [0, 1]],
      ["ceilingInsulationMaterial", ["BuildingSync::InsulationMaterialType", XSD::QName.new(NsC_2019, "CeilingInsulationMaterial")], [0, 1]],
      ["ceilingInsulationThickness", ["BuildingSync::CeilingSystemType::CeilingInsulations::CeilingInsulation::CeilingInsulationThickness", XSD::QName.new(NsC_2019, "CeilingInsulationThickness")], [0, 1]],
      ["ceilingInsulationContinuity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CeilingInsulationContinuity")], [0, 1]],
      ["ceilingInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "CeilingInsulationCondition")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingInsulations,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingInsulations"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceilingInsulation", ["BuildingSync::CeilingSystemType::CeilingInsulations::CeilingInsulation[]", XSD::QName.new(NsC_2019, "CeilingInsulation")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingRValue,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingFramingSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingFramingSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingFramingDepth,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingFramingDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingFramingFactor,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingFramingFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CeilingSystemType::CeilingVisibleAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingVisibleAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "RoofSystemType"),
    :schema_element => [
      ["roofConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "RoofConstruction")], [0, 1]],
      ["blueRoof", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BlueRoof")], [0, 1]],
      ["coolRoof", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "CoolRoof")], [0, 1]],
      ["greenRoof", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "GreenRoof")], [0, 1]],
      ["roofFinish", ["BuildingSync::Finish", XSD::QName.new(NsC_2019, "RoofFinish")], [0, 1]],
      ["roofColor", ["BuildingSync::Color", XSD::QName.new(NsC_2019, "RoofColor")], [0, 1]],
      ["roofInsulations", ["BuildingSync::RoofSystemType::RoofInsulations", XSD::QName.new(NsC_2019, "RoofInsulations")], [0, 1]],
      ["deckType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DeckType")], [0, 1]],
      ["roofRValue", ["BuildingSync::RoofSystemType::RoofRValue", XSD::QName.new(NsC_2019, "RoofRValue")], [0, 1]],
      ["roofUFactor", ["BuildingSync::RoofSystemType::RoofUFactor", XSD::QName.new(NsC_2019, "RoofUFactor")], [0, 1]],
      ["roofFramingMaterial", ["BuildingSync::FramingMaterial", XSD::QName.new(NsC_2019, "RoofFramingMaterial")], [0, 1]],
      ["roofFramingSpacing", ["BuildingSync::RoofSystemType::RoofFramingSpacing", XSD::QName.new(NsC_2019, "RoofFramingSpacing")], [0, 1]],
      ["roofFramingDepth", ["BuildingSync::RoofSystemType::RoofFramingDepth", XSD::QName.new(NsC_2019, "RoofFramingDepth")], [0, 1]],
      ["roofFramingFactor", ["BuildingSync::RoofSystemType::RoofFramingFactor", XSD::QName.new(NsC_2019, "RoofFramingFactor")], [0, 1]],
      ["roofSlope", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RoofSlope")], [0, 1]],
      ["radiantBarrier", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "RadiantBarrier")], [0, 1]],
      ["roofExteriorSolarAbsorptance", ["BuildingSync::RoofSystemType::RoofExteriorSolarAbsorptance", XSD::QName.new(NsC_2019, "RoofExteriorSolarAbsorptance")], [0, 1]],
      ["roofExteriorSolarReflectanceIndex", ["BuildingSync::RoofSystemType::RoofExteriorSolarReflectanceIndex", XSD::QName.new(NsC_2019, "RoofExteriorSolarReflectanceIndex")], [0, 1]],
      ["roofExteriorThermalAbsorptance", ["BuildingSync::RoofSystemType::RoofExteriorThermalAbsorptance", XSD::QName.new(NsC_2019, "RoofExteriorThermalAbsorptance")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation::RoofInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "RoofInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation::RoofInsulationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "RoofInsulationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation,
    :schema_name => XSD::QName.new(NsC_2019, "RoofInsulation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roofInsulationApplication", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RoofInsulationApplication")], [0, 1]],
      ["roofInsulationMaterial", ["BuildingSync::InsulationMaterialType", XSD::QName.new(NsC_2019, "RoofInsulationMaterial")], [0, 1]],
      ["roofInsulationThickness", ["BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation::RoofInsulationThickness", XSD::QName.new(NsC_2019, "RoofInsulationThickness")], [0, 1]],
      ["roofInsulationContinuity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "RoofInsulationContinuity")], [0, 1]],
      ["roofInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "RoofInsulationCondition")], [0, 1]],
      ["roofInsulationRValue", ["BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation::RoofInsulationRValue", XSD::QName.new(NsC_2019, "RoofInsulationRValue")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofInsulations,
    :schema_name => XSD::QName.new(NsC_2019, "RoofInsulations"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roofInsulation", ["BuildingSync::RoofSystemType::RoofInsulations::RoofInsulation[]", XSD::QName.new(NsC_2019, "RoofInsulation")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofRValue,
    :schema_name => XSD::QName.new(NsC_2019, "RoofRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "RoofUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofFramingSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "RoofFramingSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofFramingDepth,
    :schema_name => XSD::QName.new(NsC_2019, "RoofFramingDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofFramingFactor,
    :schema_name => XSD::QName.new(NsC_2019, "RoofFramingFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofExteriorSolarAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "RoofExteriorSolarAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofExteriorSolarReflectanceIndex,
    :schema_name => XSD::QName.new(NsC_2019, "RoofExteriorSolarReflectanceIndex"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RoofSystemType::RoofExteriorThermalAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "RoofExteriorThermalAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "FenestrationSystemType"),
    :schema_element => [
      ["fenestrationType", ["BuildingSync::FenestrationSystemType::FenestrationType", XSD::QName.new(NsC_2019, "FenestrationType")], [0, 1]],
      ["fenestrationFrameMaterial", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FenestrationFrameMaterial")], [0, 1]],
      ["fenestrationOperation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "FenestrationOperation")], [0, 1]],
      ["weatherstripped", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "Weatherstripped")], [0, 1]],
      ["tightnessFitCondition", ["BuildingSync::Tightness", XSD::QName.new(NsC_2019, "TightnessFitCondition")], [0, 1]],
      ["glassType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "GlassType")], [0, 1]],
      ["fenestrationGasFill", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FenestrationGasFill")], [0, 1]],
      ["fenestrationGlassLayers", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FenestrationGlassLayers")], [0, 1]],
      ["fenestrationRValue", ["BuildingSync::FenestrationSystemType::FenestrationRValue", XSD::QName.new(NsC_2019, "FenestrationRValue")], [0, 1]],
      ["fenestrationUFactor", ["BuildingSync::FenestrationSystemType::FenestrationUFactor", XSD::QName.new(NsC_2019, "FenestrationUFactor")], [0, 1]],
      ["solarHeatGainCoefficient", ["BuildingSync::FenestrationSystemType::SolarHeatGainCoefficient", XSD::QName.new(NsC_2019, "SolarHeatGainCoefficient")], [0, 1]],
      ["visibleTransmittance", ["BuildingSync::FenestrationSystemType::VisibleTransmittance", XSD::QName.new(NsC_2019, "VisibleTransmittance")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowSillHeight,
    :schema_name => XSD::QName.new(NsC_2019, "WindowSillHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowHeight,
    :schema_name => XSD::QName.new(NsC_2019, "WindowHeight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowWidth,
    :schema_name => XSD::QName.new(NsC_2019, "WindowWidth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowHorizontalSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "WindowHorizontalSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::OverhangHeightAboveWindow,
    :schema_name => XSD::QName.new(NsC_2019, "OverhangHeightAboveWindow"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::OverhangProjection,
    :schema_name => XSD::QName.new(NsC_2019, "OverhangProjection"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::VerticalFinDepth,
    :schema_name => XSD::QName.new(NsC_2019, "VerticalFinDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::DistanceBetweenVerticalFins,
    :schema_name => XSD::QName.new(NsC_2019, "DistanceBetweenVerticalFins"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfDistanceFromTop,
    :schema_name => XSD::QName.new(NsC_2019, "LightShelfDistanceFromTop"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfExteriorProtrusion,
    :schema_name => XSD::QName.new(NsC_2019, "LightShelfExteriorProtrusion"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfInteriorProtrusion,
    :schema_name => XSD::QName.new(NsC_2019, "LightShelfInteriorProtrusion"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves,
    :schema_name => XSD::QName.new(NsC_2019, "LightShelves"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lightShelfDistanceFromTop", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfDistanceFromTop", XSD::QName.new(NsC_2019, "LightShelfDistanceFromTop")], [0, 1]],
      ["lightShelfExteriorProtrusion", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfExteriorProtrusion", XSD::QName.new(NsC_2019, "LightShelfExteriorProtrusion")], [0, 1]],
      ["lightShelfInteriorProtrusion", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves::LightShelfInteriorProtrusion", XSD::QName.new(NsC_2019, "LightShelfInteriorProtrusion")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Window,
    :schema_name => XSD::QName.new(NsC_2019, "Window"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["windowLayout", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WindowLayout")], [0, 1]],
      ["windowOrientation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WindowOrientation")], [0, 1]],
      ["windowSillHeight", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowSillHeight", XSD::QName.new(NsC_2019, "WindowSillHeight")], [0, 1]],
      ["assemblyType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssemblyType")], [0, 1]],
      ["windowHeight", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowHeight", XSD::QName.new(NsC_2019, "WindowHeight")], [0, 1]],
      ["windowWidth", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowWidth", XSD::QName.new(NsC_2019, "WindowWidth")], [0, 1]],
      ["windowHorizontalSpacing", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::WindowHorizontalSpacing", XSD::QName.new(NsC_2019, "WindowHorizontalSpacing")], [0, 1]],
      ["exteriorShadingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ExteriorShadingType")], [0, 1]],
      ["overhangHeightAboveWindow", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::OverhangHeightAboveWindow", XSD::QName.new(NsC_2019, "OverhangHeightAboveWindow")], [0, 1]],
      ["overhangProjection", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::OverhangProjection", XSD::QName.new(NsC_2019, "OverhangProjection")], [0, 1]],
      ["verticalFinDepth", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::VerticalFinDepth", XSD::QName.new(NsC_2019, "VerticalFinDepth")], [0, 1]],
      ["distanceBetweenVerticalFins", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::DistanceBetweenVerticalFins", XSD::QName.new(NsC_2019, "DistanceBetweenVerticalFins")], [0, 1]],
      ["verticalEdgeFinOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "VerticalEdgeFinOnly")], [0, 1]],
      ["lightShelves", ["BuildingSync::FenestrationSystemType::FenestrationType::Window::LightShelves", XSD::QName.new(NsC_2019, "LightShelves")], [0, 1]],
      ["interiorShadingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "InteriorShadingType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Skylight::SkylightPitch,
    :schema_name => XSD::QName.new(NsC_2019, "SkylightPitch"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Skylight,
    :schema_name => XSD::QName.new(NsC_2019, "Skylight"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["skylightLayout", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SkylightLayout")], [0, 1]],
      ["assemblyType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssemblyType")], [0, 1]],
      ["skylightPitch", ["BuildingSync::FenestrationSystemType::FenestrationType::Skylight::SkylightPitch", XSD::QName.new(NsC_2019, "SkylightPitch")], [0, 1]],
      ["skylightWindowTreatments", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SkylightWindowTreatments")], [0, 1]],
      ["skylightSolarTube", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "SkylightSolarTube")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType::Door,
    :schema_name => XSD::QName.new(NsC_2019, "Door"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exteriorDoorType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ExteriorDoorType")], [0, 1]],
      ["vestibule", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "Vestibule")], [0, 1]],
      ["doorOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DoorOperation")], [0, 1]],
      ["doorGlazedAreaFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "DoorGlazedAreaFraction")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationType,
    :schema_name => XSD::QName.new(NsC_2019, "FenestrationType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["window", ["BuildingSync::FenestrationSystemType::FenestrationType::Window", XSD::QName.new(NsC_2019, "Window")], [0, 1]],
      ["skylight", ["BuildingSync::FenestrationSystemType::FenestrationType::Skylight", XSD::QName.new(NsC_2019, "Skylight")], [0, 1]],
      ["door", ["BuildingSync::FenestrationSystemType::FenestrationType::Door", XSD::QName.new(NsC_2019, "Door")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationRValue,
    :schema_name => XSD::QName.new(NsC_2019, "FenestrationRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::FenestrationUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "FenestrationUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::SolarHeatGainCoefficient,
    :schema_name => XSD::QName.new(NsC_2019, "SolarHeatGainCoefficient"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationSystemType::VisibleTransmittance,
    :schema_name => XSD::QName.new(NsC_2019, "VisibleTransmittance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "ExteriorFloorSystemType"),
    :schema_element => [
      ["exteriorFloorConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "ExteriorFloorConstruction")], [0, 1]],
      ["exteriorFloorFinish", ["BuildingSync::Finish", XSD::QName.new(NsC_2019, "ExteriorFloorFinish")], [0, 1]],
      ["exteriorFloorColor", ["BuildingSync::Color", XSD::QName.new(NsC_2019, "ExteriorFloorColor")], [0, 1]],
      ["exteriorFloorRValue", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorRValue", XSD::QName.new(NsC_2019, "ExteriorFloorRValue")], [0, 1]],
      ["exteriorFloorUFactor", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorUFactor", XSD::QName.new(NsC_2019, "ExteriorFloorUFactor")], [0, 1]],
      ["exteriorFloorFramingMaterial", ["BuildingSync::FramingMaterial", XSD::QName.new(NsC_2019, "ExteriorFloorFramingMaterial")], [0, 1]],
      ["exteriorFloorFramingSpacing", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingSpacing", XSD::QName.new(NsC_2019, "ExteriorFloorFramingSpacing")], [0, 1]],
      ["exteriorFloorFramingDepth", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingDepth", XSD::QName.new(NsC_2019, "ExteriorFloorFramingDepth")], [0, 1]],
      ["exteriorFloorFramingFactor", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingFactor", XSD::QName.new(NsC_2019, "ExteriorFloorFramingFactor")], [0, 1]],
      ["exteriorFloorExteriorSolarAbsorptance", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorExteriorSolarAbsorptance", XSD::QName.new(NsC_2019, "ExteriorFloorExteriorSolarAbsorptance")], [0, 1]],
      ["exteriorFloorExteriorThermalAbsorptance", ["BuildingSync::ExteriorFloorSystemType::ExteriorFloorExteriorThermalAbsorptance", XSD::QName.new(NsC_2019, "ExteriorFloorExteriorThermalAbsorptance")], [0, 1]],
      ["interiorVisibleAbsorptance", ["BuildingSync::InteriorVisibleAbsorptance", XSD::QName.new(NsC_2019, "InteriorVisibleAbsorptance")], [0, 1]],
      ["exteriorRoughness", ["BuildingSync::ExteriorRoughnessType", XSD::QName.new(NsC_2019, "ExteriorRoughness")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorRValue,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorFramingSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingDepth,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorFramingDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorFramingFactor,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorFramingFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorExteriorSolarAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorExteriorSolarAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorFloorSystemType::ExteriorFloorExteriorThermalAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorExteriorThermalAbsorptance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "FoundationSystemType"),
    :schema_element => [
      ["groundCouplings", ["BuildingSync::FoundationSystemType::GroundCouplings", XSD::QName.new(NsC_2019, "GroundCouplings")], [0, 1]],
      ["floorCovering", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FloorCovering")], [0, 1]],
      ["floorConstructionType", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "FloorConstructionType")], [0, 1]],
      ["plumbingPenetrationSealing", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PlumbingPenetrationSealing")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade::SlabRValue,
    :schema_name => XSD::QName.new(NsC_2019, "SlabRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade::SlabUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "SlabUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade,
    :schema_name => XSD::QName.new(NsC_2019, "SlabOnGrade"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["slabInsulationOrientation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SlabInsulationOrientation")], [0, 1]],
      ["slabArea", ["BuildingSync::SlabArea", XSD::QName.new(NsC_2019, "SlabArea")], [0, 1]],
      ["slabPerimeter", ["BuildingSync::SlabPerimeter", XSD::QName.new(NsC_2019, "SlabPerimeter")], [0, 1]],
      ["slabExposedPerimeter", ["BuildingSync::SlabExposedPerimeter", XSD::QName.new(NsC_2019, "SlabExposedPerimeter")], [0, 1]],
      ["slabInsulationThickness", ["BuildingSync::SlabInsulationThickness", XSD::QName.new(NsC_2019, "SlabInsulationThickness")], [0, 1]],
      ["slabRValue", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade::SlabRValue", XSD::QName.new(NsC_2019, "SlabRValue")], [0, 1]],
      ["slabUFactor", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade::SlabUFactor", XSD::QName.new(NsC_2019, "SlabUFactor")], [0, 1]],
      ["slabInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "SlabInsulationCondition")], [0, 1]],
      ["slabHeating", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SlabHeating")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "FloorInsulationThickness"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorRValue,
    :schema_name => XSD::QName.new(NsC_2019, "FloorRValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "FloorUFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingSpacing,
    :schema_name => XSD::QName.new(NsC_2019, "FloorFramingSpacing"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingDepth,
    :schema_name => XSD::QName.new(NsC_2019, "FloorFramingDepth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingFactor,
    :schema_name => XSD::QName.new(NsC_2019, "FloorFramingFactor"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated,
    :schema_name => XSD::QName.new(NsC_2019, "Ventilated"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["floorInsulationThickness", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorInsulationThickness", XSD::QName.new(NsC_2019, "FloorInsulationThickness")], [0, 1]],
      ["floorInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "FloorInsulationCondition")], [0, 1]],
      ["floorRValue", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorRValue", XSD::QName.new(NsC_2019, "FloorRValue")], [0, 1]],
      ["floorUFactor", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorUFactor", XSD::QName.new(NsC_2019, "FloorUFactor")], [0, 1]],
      ["floorFramingSpacing", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingSpacing", XSD::QName.new(NsC_2019, "FloorFramingSpacing")], [0, 1]],
      ["floorFramingDepth", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingDepth", XSD::QName.new(NsC_2019, "FloorFramingDepth")], [0, 1]],
      ["floorFramingFactor", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated::FloorFramingFactor", XSD::QName.new(NsC_2019, "FloorFramingFactor")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Unventilated,
    :schema_name => XSD::QName.new(NsC_2019, "Unventilated"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["foundationWallConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "FoundationWallConstruction")], [0, 1]],
      ["foundationHeightAboveGrade", ["BuildingSync::FoundationHeightAboveGrade", XSD::QName.new(NsC_2019, "FoundationHeightAboveGrade")], [0, 1]],
      ["foundationWallInsulationThickness", ["BuildingSync::FoundationWallInsulationThickness", XSD::QName.new(NsC_2019, "FoundationWallInsulationThickness")], [0, 1]],
      ["foundationWallRValue", ["BuildingSync::FoundationWallRValue", XSD::QName.new(NsC_2019, "FoundationWallRValue")], [0, 1]],
      ["foundationWallUFactor", ["BuildingSync::FoundationWallUFactor", XSD::QName.new(NsC_2019, "FoundationWallUFactor")], [0, 1]],
      ["foundationWallInsulationContinuity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FoundationWallInsulationContinuity")], [0, 1]],
      ["foundationWallInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "FoundationWallInsulationCondition")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting,
    :schema_name => XSD::QName.new(NsC_2019, "CrawlspaceVenting"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ventilated", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Ventilated", XSD::QName.new(NsC_2019, "Ventilated")], [0, 1]],
      ["unventilated", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting::Unventilated", XSD::QName.new(NsC_2019, "Unventilated")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace,
    :schema_name => XSD::QName.new(NsC_2019, "Crawlspace"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crawlspaceVenting", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace::CrawlspaceVenting", XSD::QName.new(NsC_2019, "CrawlspaceVenting")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Basement,
    :schema_name => XSD::QName.new(NsC_2019, "Basement"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["basementConditioning", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BasementConditioning")], [0, 1]],
      ["foundationWallConstruction", ["BuildingSync::EnvelopeConstructionType", XSD::QName.new(NsC_2019, "FoundationWallConstruction")], [0, 1]],
      ["foundationHeightAboveGrade", ["BuildingSync::FoundationHeightAboveGrade", XSD::QName.new(NsC_2019, "FoundationHeightAboveGrade")], [0, 1]],
      ["foundationWallInsulationThickness", ["BuildingSync::FoundationWallInsulationThickness", XSD::QName.new(NsC_2019, "FoundationWallInsulationThickness")], [0, 1]],
      ["foundationWallRValue", ["BuildingSync::FoundationWallRValue", XSD::QName.new(NsC_2019, "FoundationWallRValue")], [0, 1]],
      ["foundationWallUFactor", ["BuildingSync::FoundationWallUFactor", XSD::QName.new(NsC_2019, "FoundationWallUFactor")], [0, 1]],
      ["foundationWallInsulationContinuity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FoundationWallInsulationContinuity")], [0, 1]],
      ["foundationWallInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "FoundationWallInsulationCondition")], [0, 1]],
      ["slabInsulationOrientation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SlabInsulationOrientation")], [0, 1]],
      ["slabArea", ["BuildingSync::SlabArea", XSD::QName.new(NsC_2019, "SlabArea")], [0, 1]],
      ["slabPerimeter", ["BuildingSync::SlabPerimeter", XSD::QName.new(NsC_2019, "SlabPerimeter")], [0, 1]],
      ["slabExposedPerimeter", ["BuildingSync::SlabExposedPerimeter", XSD::QName.new(NsC_2019, "SlabExposedPerimeter")], [0, 1]],
      ["slabInsulationThickness", ["BuildingSync::SlabInsulationThickness", XSD::QName.new(NsC_2019, "SlabInsulationThickness")], [0, 1]],
      ["slabInsulationCondition", ["BuildingSync::InsulationCondition", XSD::QName.new(NsC_2019, "SlabInsulationCondition")], [0, 1]],
      ["slabHeating", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SlabHeating")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling,
    :schema_name => XSD::QName.new(NsC_2019, "GroundCoupling"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["slabOnGrade", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::SlabOnGrade", XSD::QName.new(NsC_2019, "SlabOnGrade")], [0, 1]],
      ["crawlspace", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Crawlspace", XSD::QName.new(NsC_2019, "Crawlspace")], [0, 1]],
      ["basement", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling::Basement", XSD::QName.new(NsC_2019, "Basement")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]],
      ["unknown", ["BuildingSync::UnknownType", XSD::QName.new(NsC_2019, "Unknown")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FoundationSystemType::GroundCouplings,
    :schema_name => XSD::QName.new(NsC_2019, "GroundCouplings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["groundCoupling", ["BuildingSync::FoundationSystemType::GroundCouplings::GroundCoupling[]", XSD::QName.new(NsC_2019, "GroundCoupling")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CriticalITSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "CriticalITSystemType"),
    :schema_element => [
      ["iTSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ITSystemType")], [0, 1]],
      ["iTPeakPower", ["BuildingSync::CriticalITSystemType::ITPeakPower", XSD::QName.new(NsC_2019, "ITPeakPower")], [0, 1]],
      ["iTStandbyPower", ["BuildingSync::CriticalITSystemType::ITStandbyPower", XSD::QName.new(NsC_2019, "ITStandbyPower")], [0, 1]],
      ["iTNominalPower", ["BuildingSync::CriticalITSystemType::ITNominalPower", XSD::QName.new(NsC_2019, "ITNominalPower")], [0, 1]],
      ["controls", ["BuildingSync::CriticalITSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CriticalITSystemType::ITPeakPower,
    :schema_name => XSD::QName.new(NsC_2019, "ITPeakPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CriticalITSystemType::ITStandbyPower,
    :schema_name => XSD::QName.new(NsC_2019, "ITStandbyPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CriticalITSystemType::ITNominalPower,
    :schema_name => XSD::QName.new(NsC_2019, "ITNominalPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CriticalITSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PlugElectricLoadType,
    :schema_type => XSD::QName.new(NsC_2019, "PlugElectricLoadType"),
    :schema_element => [
      ["plugLoadType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PlugLoadType")], [0, 1]],
      ["plugLoadPeakPower", ["BuildingSync::PlugElectricLoadType::PlugLoadPeakPower", XSD::QName.new(NsC_2019, "PlugLoadPeakPower")], [0, 1]],
      ["plugLoadStandbyPower", ["BuildingSync::PlugElectricLoadType::PlugLoadStandbyPower", XSD::QName.new(NsC_2019, "PlugLoadStandbyPower")], [0, 1]],
      ["plugLoadNominalPower", ["BuildingSync::PlugElectricLoadType::PlugLoadNominalPower", XSD::QName.new(NsC_2019, "PlugLoadNominalPower")], [0, 1]],
      ["weightedAverageLoad", ["BuildingSync::WeightedAverageLoad", XSD::QName.new(NsC_2019, "WeightedAverageLoad")], [0, 1]],
      ["controls", ["BuildingSync::PlugElectricLoadType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PlugElectricLoadType::PlugLoadPeakPower,
    :schema_name => XSD::QName.new(NsC_2019, "PlugLoadPeakPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PlugElectricLoadType::PlugLoadStandbyPower,
    :schema_name => XSD::QName.new(NsC_2019, "PlugLoadStandbyPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PlugElectricLoadType::PlugLoadNominalPower,
    :schema_name => XSD::QName.new(NsC_2019, "PlugLoadNominalPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PlugElectricLoadType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ProcessGasElectricLoadType,
    :schema_type => XSD::QName.new(NsC_2019, "ProcessGasElectricLoadType"),
    :schema_element => [
      ["processLoadType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ProcessLoadType")], [0, 1]],
      ["processLoadPeakPower", ["BuildingSync::ProcessGasElectricLoadType::ProcessLoadPeakPower", XSD::QName.new(NsC_2019, "ProcessLoadPeakPower")], [0, 1]],
      ["processLoadStandbyPower", ["BuildingSync::ProcessGasElectricLoadType::ProcessLoadStandbyPower", XSD::QName.new(NsC_2019, "ProcessLoadStandbyPower")], [0, 1]],
      ["weightedAverageLoad", ["BuildingSync::WeightedAverageLoad", XSD::QName.new(NsC_2019, "WeightedAverageLoad")], [0, 1]],
      ["heatGainFraction", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "HeatGainFraction")], [0, 1]],
      ["dutyCycle", ["BuildingSync::DutyCycle", XSD::QName.new(NsC_2019, "DutyCycle")], [0, 1]],
      ["controls", ["BuildingSync::ProcessGasElectricLoadType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ProcessGasElectricLoadType::ProcessLoadPeakPower,
    :schema_name => XSD::QName.new(NsC_2019, "ProcessLoadPeakPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ProcessGasElectricLoadType::ProcessLoadStandbyPower,
    :schema_name => XSD::QName.new(NsC_2019, "ProcessLoadStandbyPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ProcessGasElectricLoadType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ConveyanceSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "ConveyanceSystemType"),
    :schema_element => [
      ["conveyanceSystemType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ConveyanceSystemType")], [0, 1]],
      ["conveyanceLoadType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ConveyanceLoadType")], [0, 1]],
      ["conveyancePeakPower", ["BuildingSync::ConveyanceSystemType::ConveyancePeakPower", XSD::QName.new(NsC_2019, "ConveyancePeakPower")], [0, 1]],
      ["conveyanceStandbyPower", ["BuildingSync::ConveyanceSystemType::ConveyanceStandbyPower", XSD::QName.new(NsC_2019, "ConveyanceStandbyPower")], [0, 1]],
      ["controls", ["BuildingSync::ConveyanceSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["conveyanceSystemCondition", ["BuildingSync::EquipmentCondition", XSD::QName.new(NsC_2019, "ConveyanceSystemCondition")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ConveyanceSystemType::ConveyancePeakPower,
    :schema_name => XSD::QName.new(NsC_2019, "ConveyancePeakPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ConveyanceSystemType::ConveyanceStandbyPower,
    :schema_name => XSD::QName.new(NsC_2019, "ConveyanceStandbyPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ConveyanceSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType,
    :schema_type => XSD::QName.new(NsC_2019, "OnsiteStorageTransmissionGenerationSystemType"),
    :schema_element => [
      ["averageAnnualOperatingHours", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AverageAnnualOperatingHours")], [0, 1]],
      ["energyConversionType", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType", XSD::QName.new(NsC_2019, "EnergyConversionType")], [0, 1]],
      ["backupGenerator", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "BackupGenerator")], [0, 1]],
      ["demandReduction", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "DemandReduction")], [0, 1]],
      ["capacity", ["BuildingSync::Capacity", XSD::QName.new(NsC_2019, "Capacity")], [0, 1]],
      ["capacityUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CapacityUnits")], [0, 1]],
      ["controls", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Storage,
    :schema_name => XSD::QName.new(NsC_2019, "Storage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyStorageTechnology", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EnergyStorageTechnology")], [0, 1]],
      ["thermalMedium", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThermalMedium")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemNumberOfModulesPerArray,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemNumberOfModulesPerArray"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemNumberOfArrays,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemNumberOfArrays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemMaximumPowerOutput,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemMaximumPowerOutput"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemInverterEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemInverterEfficiency"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemArrayAzimuth,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemArrayAzimuth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemRackingSystemTiltAngleMin,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemRackingSystemTiltAngleMin"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemRackingSystemTiltAngleMax,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicSystemRackingSystemTiltAngleMax"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleRatedPower,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicModuleRatedPower"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleLength,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicModuleLength"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleWidth,
    :schema_name => XSD::QName.new(NsC_2019, "PhotovoltaicModuleWidth"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV,
    :schema_name => XSD::QName.new(NsC_2019, "PV"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["photovoltaicSystemNumberOfModulesPerArray", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemNumberOfModulesPerArray", XSD::QName.new(NsC_2019, "PhotovoltaicSystemNumberOfModulesPerArray")], [0, 1]],
      ["photovoltaicSystemNumberOfArrays", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemNumberOfArrays", XSD::QName.new(NsC_2019, "PhotovoltaicSystemNumberOfArrays")], [0, 1]],
      ["photovoltaicSystemMaximumPowerOutput", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemMaximumPowerOutput", XSD::QName.new(NsC_2019, "PhotovoltaicSystemMaximumPowerOutput")], [0, 1]],
      ["photovoltaicSystemInverterEfficiency", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemInverterEfficiency", XSD::QName.new(NsC_2019, "PhotovoltaicSystemInverterEfficiency")], [0, 1]],
      ["photovoltaicSystemArrayAzimuth", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemArrayAzimuth", XSD::QName.new(NsC_2019, "PhotovoltaicSystemArrayAzimuth")], [0, 1]],
      ["photovoltaicSystemRackingSystemTiltAngleMin", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemRackingSystemTiltAngleMin", XSD::QName.new(NsC_2019, "PhotovoltaicSystemRackingSystemTiltAngleMin")], [0, 1]],
      ["photovoltaicSystemRackingSystemTiltAngleMax", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicSystemRackingSystemTiltAngleMax", XSD::QName.new(NsC_2019, "PhotovoltaicSystemRackingSystemTiltAngleMax")], [0, 1]],
      ["photovoltaicSystemLocation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PhotovoltaicSystemLocation")], [0, 1]],
      ["photovoltaicModuleRatedPower", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleRatedPower", XSD::QName.new(NsC_2019, "PhotovoltaicModuleRatedPower")], [0, 1]],
      ["photovoltaicModuleLength", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleLength", XSD::QName.new(NsC_2019, "PhotovoltaicModuleLength")], [0, 1]],
      ["photovoltaicModuleWidth", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV::PhotovoltaicModuleWidth", XSD::QName.new(NsC_2019, "PhotovoltaicModuleWidth")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::Other,
    :schema_name => XSD::QName.new(NsC_2019, "Other"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["otherEnergyGenerationTechnology", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherEnergyGenerationTechnology")], [0, 1]],
      ["outputResourceType", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "OutputResourceType")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType,
    :schema_name => XSD::QName.new(NsC_2019, "OnsiteGenerationType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["pV", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::PV", XSD::QName.new(NsC_2019, "PV")], [0, 1]],
      ["other", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType::Other", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation,
    :schema_name => XSD::QName.new(NsC_2019, "Generation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["onsiteGenerationType", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation::OnsiteGenerationType", XSD::QName.new(NsC_2019, "OnsiteGenerationType")], [0, 1]],
      ["externalPowerSupply", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ExternalPowerSupply")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyConversionType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["storage", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Storage", XSD::QName.new(NsC_2019, "Storage")], [0, 1]],
      ["generation", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType::EnergyConversionType::Generation", XSD::QName.new(NsC_2019, "Generation")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OnsiteStorageTransmissionGenerationSystemType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PoolType,
    :schema_type => XSD::QName.new(NsC_2019, "PoolType"),
    :schema_element => [
      ["poolType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PoolType")], [0, 1]],
      ["poolSizeCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PoolSizeCategory")], [0, 1]],
      ["poolArea", ["BuildingSync::PoolType::PoolArea", XSD::QName.new(NsC_2019, "PoolArea")], [0, 1]],
      ["poolVolume", ["BuildingSync::PoolType::PoolVolume", XSD::QName.new(NsC_2019, "PoolVolume")], [0, 1]],
      ["pumpDutyCycle", ["BuildingSync::PoolType::PumpDutyCycle", XSD::QName.new(NsC_2019, "PumpDutyCycle")], [0, 1]],
      ["heated", ["BuildingSync::PoolType::Heated", XSD::QName.new(NsC_2019, "Heated")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::PoolArea,
    :schema_name => XSD::QName.new(NsC_2019, "PoolArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::PoolVolume,
    :schema_name => XSD::QName.new(NsC_2019, "PoolVolume"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::PumpDutyCycle,
    :schema_name => XSD::QName.new(NsC_2019, "PumpDutyCycle"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::Heated::WaterTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "WaterTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::Heated::HoursUncovered,
    :schema_name => XSD::QName.new(NsC_2019, "HoursUncovered"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PoolType::Heated::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PoolType::Heated,
    :schema_name => XSD::QName.new(NsC_2019, "Heated"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")], [0, 1]],
      ["waterTemperature", ["BuildingSync::PoolType::Heated::WaterTemperature", XSD::QName.new(NsC_2019, "WaterTemperature")], [0, 1]],
      ["hoursUncovered", ["BuildingSync::PoolType::Heated::HoursUncovered", XSD::QName.new(NsC_2019, "HoursUncovered")], [0, 1]],
      ["controls", ["BuildingSync::PoolType::Heated::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WaterUseType,
    :schema_type => XSD::QName.new(NsC_2019, "WaterUseType"),
    :schema_element => [
      ["waterUseType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterUseType")], [0, 1]],
      ["waterResource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterResource")], [0, 1]],
      ["lowFlowFixtures", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "LowFlowFixtures")], [0, 1]],
      ["waterFixtureRatedFlowRate", ["BuildingSync::WaterUseType::WaterFixtureRatedFlowRate", XSD::QName.new(NsC_2019, "WaterFixtureRatedFlowRate")], [0, 1]],
      ["waterFixtureVolumePerCycle", ["BuildingSync::WaterUseType::WaterFixtureVolumePerCycle", XSD::QName.new(NsC_2019, "WaterFixtureVolumePerCycle")], [0, 1]],
      ["waterFixtureCyclesPerDay", ["BuildingSync::WaterUseType::WaterFixtureCyclesPerDay", XSD::QName.new(NsC_2019, "WaterFixtureCyclesPerDay")], [0, 1]],
      ["waterFixtureFractionHotWater", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "WaterFixtureFractionHotWater")], [0, 1]],
      ["thirdPartyCertification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ThirdPartyCertification")], [0, 1]],
      ["controls", ["BuildingSync::WaterUseType::Controls", XSD::QName.new(NsC_2019, "Controls")], [0, 1]],
      ["yearInstalled", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearInstalled")], [0, 1]],
      ["yearOfManufacture", ["SOAP::SOAPGYear", XSD::QName.new(NsC_2019, "YearOfManufacture")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Manufacturer")], [0, 1]],
      ["modelNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelNumber")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Location")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]],
      ["quantity", ["BuildingSync::Quantity", XSD::QName.new(NsC_2019, "Quantity")], [0, 1]],
      ["equipmentID", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EquipmentID")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterUseType::WaterFixtureRatedFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "WaterFixtureRatedFlowRate"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterUseType::WaterFixtureVolumePerCycle,
    :schema_name => XSD::QName.new(NsC_2019, "WaterFixtureVolumePerCycle"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterUseType::WaterFixtureCyclesPerDay,
    :schema_name => XSD::QName.new(NsC_2019, "WaterFixtureCyclesPerDay"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterUseType::Controls,
    :schema_name => XSD::QName.new(NsC_2019, "Controls"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["control", ["BuildingSync::ControlGeneralType[]", XSD::QName.new(NsC_2019, "Control")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType,
    :schema_type => XSD::QName.new(NsC_2019, "CalculationMethodType"),
    :schema_element => [ :choice,
      ["modeled", ["BuildingSync::CalculationMethodType::Modeled", XSD::QName.new(NsC_2019, "Modeled")], [0, 1]],
      ["measured", ["BuildingSync::CalculationMethodType::Measured", XSD::QName.new(NsC_2019, "Measured")], [0, 1]],
      ["estimated", ["BuildingSync::EstimatedType", XSD::QName.new(NsC_2019, "Estimated")], [0, 1]],
      ["engineeringCalculation", ["BuildingSync::EngineeringCalculationType", XSD::QName.new(NsC_2019, "EngineeringCalculation")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Modeled,
    :schema_name => XSD::QName.new(NsC_2019, "Modeled"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["softwareProgramUsed", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SoftwareProgramUsed")], [0, 1]],
      ["softwareProgramVersion", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SoftwareProgramVersion")], [0, 1]],
      ["weatherDataType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherDataType")], [0, 1]],
      ["simulationCompletionStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SimulationCompletionStatus")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::UtilityBills,
    :schema_name => XSD::QName.new(NsC_2019, "UtilityBills"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["utilityMeterNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "UtilityMeterNumber")], [0, nil]],
      ["utilityAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityAccountNumber")], [0, 1]],
      ["utilityBillpayer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityBillpayer")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::DirectMeasurement,
    :schema_name => XSD::QName.new(NsC_2019, "DirectMeasurement"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource,
    :schema_name => XSD::QName.new(NsC_2019, "MeasuredEnergySource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["utilityBills", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::UtilityBills", XSD::QName.new(NsC_2019, "UtilityBills")], [0, 1]],
      ["directMeasurement", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::DirectMeasurement", XSD::QName.new(NsC_2019, "DirectMeasurement")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured,
    :schema_name => XSD::QName.new(NsC_2019, "Measured"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measuredEnergySource", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource", XSD::QName.new(NsC_2019, "MeasuredEnergySource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::SpatialUnitTypeType,
    :schema_type => XSD::QName.new(NsC_2019, "SpatialUnitTypeType"),
    :schema_element => [
      ["spatialUnitType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SpatialUnitType")], [0, 1]],
      ["numberOfUnits", ["BuildingSync::SpatialUnitTypeType::NumberOfUnits", XSD::QName.new(NsC_2019, "NumberOfUnits")], [0, 1]],
      ["unitDensity", ["BuildingSync::SpatialUnitTypeType::UnitDensity", XSD::QName.new(NsC_2019, "UnitDensity")], [0, 1]],
      ["spatialUnitOccupiedPercentage", ["BuildingSync::SpatialUnitTypeType::SpatialUnitOccupiedPercentage", XSD::QName.new(NsC_2019, "SpatialUnitOccupiedPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::SpatialUnitTypeType::NumberOfUnits,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpatialUnitTypeType::UnitDensity,
    :schema_name => XSD::QName.new(NsC_2019, "UnitDensity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpatialUnitTypeType::SpatialUnitOccupiedPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "SpatialUnitOccupiedPercentage"),
    :is_anonymous => true,
    :schema_qualified => true
  )

  Registry.register(
    :class => BuildingSync::CBECSType,
    :schema_type => XSD::QName.new(NsC_2019, "CBECSType"),
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ElectricResistanceType,
    :schema_type => XSD::QName.new(NsC_2019, "ElectricResistanceType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::EngineeringCalculationType,
    :schema_type => XSD::QName.new(NsC_2019, "EngineeringCalculationType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::EstimatedType,
    :schema_type => XSD::QName.new(NsC_2019, "EstimatedType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::NeonType,
    :schema_type => XSD::QName.new(NsC_2019, "NeonType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::NoCoolingType,
    :schema_type => XSD::QName.new(NsC_2019, "NoCoolingType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::NoHeatingType,
    :schema_type => XSD::QName.new(NsC_2019, "NoHeatingType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::OtherCombinationType,
    :schema_type => XSD::QName.new(NsC_2019, "OtherCombinationType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::OtherType,
    :schema_type => XSD::QName.new(NsC_2019, "OtherType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::PhotoluminescentType,
    :schema_type => XSD::QName.new(NsC_2019, "PhotoluminescentType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::PlasmaType,
    :schema_type => XSD::QName.new(NsC_2019, "PlasmaType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::PortfolioManagerType,
    :schema_type => XSD::QName.new(NsC_2019, "PortfolioManagerType"),
    :schema_element => [
      ["pMBenchmarkDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "PMBenchmarkDate")], [0, 1]],
      ["buildingProfileStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BuildingProfileStatus")], [0, 1]],
      ["federalSustainabilityChecklistCompletionPercentage", ["BuildingSync::PortfolioManagerType::FederalSustainabilityChecklistCompletionPercentage", XSD::QName.new(NsC_2019, "FederalSustainabilityChecklistCompletionPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PortfolioManagerType::FederalSustainabilityChecklistCompletionPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "FederalSustainabilityChecklistCompletionPercentage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SelfLuminousType,
    :schema_type => XSD::QName.new(NsC_2019, "SelfLuminousType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UnknownType,
    :schema_type => XSD::QName.new(NsC_2019, "UnknownType"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::FanBasedDistributionTypeType,
    :schema_type => XSD::QName.new(NsC_2019, "FanBasedDistributionTypeType"),
    :schema_element => [ :choice,
      ["fanCoil", ["BuildingSync::FanBasedDistributionTypeType::FanCoil", XSD::QName.new(NsC_2019, "FanCoil")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FanBasedDistributionTypeType::FanCoil,
    :schema_name => XSD::QName.new(NsC_2019, "FanCoil"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fanCoilType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FanCoilType")], [0, 1]],
      ["hVACPipeConfiguration", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HVACPipeConfiguration")], [0, 1]],
      ["pipeInsulationThickness", ["BuildingSync::PipeInsulationThickness", XSD::QName.new(NsC_2019, "PipeInsulationThickness")], [0, 1]],
      ["pipeLocation", ["BuildingSync::PipeLocation", XSD::QName.new(NsC_2019, "PipeLocation")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FanBasedType,
    :schema_type => XSD::QName.new(NsC_2019, "FanBasedType"),
    :schema_element => [
      ["fanBasedDistributionType", ["BuildingSync::FanBasedDistributionTypeType", XSD::QName.new(NsC_2019, "FanBasedDistributionType")], [0, 1]],
      ["airSideEconomizer", ["BuildingSync::FanBasedType::AirSideEconomizer", XSD::QName.new(NsC_2019, "AirSideEconomizer")], [0, 1]],
      ["heatingSupplyAirTemperatureControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperatureControl")], [0, 1]],
      ["coolingSupplyAirTemperature", ["BuildingSync::FanBasedType::CoolingSupplyAirTemperature", XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperature")], [0, 1]],
      ["coolingSupplyAirTemperatureControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperatureControlType")], [0, 1]],
      ["outsideAirResetMaximumHeatingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMaximumHeatingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMaximumHeatingSupplyTemperature")], [0, 1]],
      ["outsideAirResetMinimumHeatingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMinimumHeatingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMinimumHeatingSupplyTemperature")], [0, 1]],
      ["outsideAirTemperatureUpperLimitHeatingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitHeatingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitHeatingResetControl")], [0, 1]],
      ["outsideAirTemperatureLowerLimitHeatingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitHeatingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitHeatingResetControl")], [0, 1]],
      ["outsideAirResetMaximumCoolingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMaximumCoolingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMaximumCoolingSupplyTemperature")], [0, 1]],
      ["outsideAirResetMinimumCoolingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMinimumCoolingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMinimumCoolingSupplyTemperature")], [0, 1]],
      ["outsideAirTemperatureUpperLimitCoolingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitCoolingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitCoolingResetControl")], [0, 1]],
      ["outsideAirTemperatureLowerLimitCoolingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitCoolingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitCoolingResetControl")], [0, 1]],
      ["heatingSupplyAirTemperature", ["BuildingSync::FanBasedType::HeatingSupplyAirTemperature", XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperature")], [0, 1]],
      ["supplyAirTemperatureResetControl", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "SupplyAirTemperatureResetControl")], [0, 1]],
      ["staticPressureResetControl", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "StaticPressureResetControl")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerDryBulbControlPoint,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerDryBulbControlPoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerEnthalpyControlPoint,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerEnthalpyControlPoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerLowTemperatureLockout,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerLowTemperatureLockout"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer,
    :schema_name => XSD::QName.new(NsC_2019, "AirSideEconomizer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["airSideEconomizerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirSideEconomizerType")], [0, 1]],
      ["economizerControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EconomizerControl")], [0, 1]],
      ["economizerDryBulbControlPoint", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerDryBulbControlPoint", XSD::QName.new(NsC_2019, "EconomizerDryBulbControlPoint")], [0, 1]],
      ["economizerEnthalpyControlPoint", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerEnthalpyControlPoint", XSD::QName.new(NsC_2019, "EconomizerEnthalpyControlPoint")], [0, 1]],
      ["economizerLowTemperatureLockout", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerLowTemperatureLockout", XSD::QName.new(NsC_2019, "EconomizerLowTemperatureLockout")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::CoolingSupplyAirTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMaximumHeatingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMaximumHeatingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMinimumHeatingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMinimumHeatingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitHeatingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitHeatingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitHeatingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitHeatingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMaximumCoolingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMaximumCoolingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMinimumCoolingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMinimumCoolingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitCoolingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitCoolingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitCoolingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitCoolingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::HeatingSupplyAirTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlGeneralType"),
    :schema_element => [
      ["advancedPowerStrip", ["BuildingSync::ControlGeneralType::AdvancedPowerStrip", XSD::QName.new(NsC_2019, "AdvancedPowerStrip")], [0, 1]],
      ["manual", ["BuildingSync::ControlGeneralType::Manual", XSD::QName.new(NsC_2019, "Manual")], [0, 1]],
      ["occupancy", ["BuildingSync::Occupancy", XSD::QName.new(NsC_2019, "Occupancy")], [0, 1]],
      ["timer", ["BuildingSync::ControlGeneralType::Timer", XSD::QName.new(NsC_2019, "Timer")], [0, 1]],
      ["thermostat", ["BuildingSync::ControlGeneralType::Thermostat", XSD::QName.new(NsC_2019, "Thermostat")], [0, 1]],
      ["otherControlTechnology", ["BuildingSync::ControlGeneralType::OtherControlTechnology", XSD::QName.new(NsC_2019, "OtherControlTechnology")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType::AdvancedPowerStrip,
    :schema_name => XSD::QName.new(NsC_2019, "AdvancedPowerStrip"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyGeneralType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType::Manual,
    :schema_name => XSD::QName.new(NsC_2019, "Manual"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyGeneralType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType::Timer,
    :schema_name => XSD::QName.new(NsC_2019, "Timer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyGeneralType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType::Thermostat,
    :schema_name => XSD::QName.new(NsC_2019, "Thermostat"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyGeneralType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlGeneralType::OtherControlTechnology,
    :schema_name => XSD::QName.new(NsC_2019, "OtherControlTechnology"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["otherControlTechnologyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlTechnologyName")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyGeneralType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlLightingType"),
    :schema_element => [
      ["advancedPowerStrip", ["BuildingSync::ControlLightingType::AdvancedPowerStrip", XSD::QName.new(NsC_2019, "AdvancedPowerStrip")], [0, 1]],
      ["daylighting", ["BuildingSync::ControlLightingType::Daylighting", XSD::QName.new(NsC_2019, "Daylighting")], [0, 1]],
      ["manual", ["BuildingSync::ControlLightingType::Manual", XSD::QName.new(NsC_2019, "Manual")], [0, 1]],
      ["occupancy", ["BuildingSync::Occupancy", XSD::QName.new(NsC_2019, "Occupancy")], [0, 1]],
      ["timer", ["BuildingSync::ControlLightingType::Timer", XSD::QName.new(NsC_2019, "Timer")], [0, 1]],
      ["otherControlTechnology", ["BuildingSync::ControlLightingType::OtherControlTechnology", XSD::QName.new(NsC_2019, "OtherControlTechnology")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::AdvancedPowerStrip,
    :schema_name => XSD::QName.new(NsC_2019, "AdvancedPowerStrip"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyLightingType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::Daylighting::ControlSteps,
    :schema_name => XSD::QName.new(NsC_2019, "ControlSteps"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::Daylighting,
    :schema_name => XSD::QName.new(NsC_2019, "Daylighting"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlSensor", ["BuildingSync::ControlSensorDaylightingType", XSD::QName.new(NsC_2019, "ControlSensor")], [0, 1]],
      ["controlSteps", ["BuildingSync::ControlLightingType::Daylighting::ControlSteps", XSD::QName.new(NsC_2019, "ControlSteps")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyDaylightingType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::Manual,
    :schema_name => XSD::QName.new(NsC_2019, "Manual"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::Timer,
    :schema_name => XSD::QName.new(NsC_2019, "Timer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyLightingType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlLightingType::OtherControlTechnology,
    :schema_name => XSD::QName.new(NsC_2019, "OtherControlTechnology"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["otherControlTechnologyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlTechnologyName")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyLightingType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute,
    :schema_type => XSD::QName.new(NsC_2019, "BoundedDecimalZeroToOneWithSourceAttribute"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType,
    :schema_type => XSD::QName.new(NsC_2019, "DerivedModelType"),
    :schema_element => [
      ["derivedModelName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DerivedModelName")], [0, 1]],
      ["measuredScenarioID", ["BuildingSync::DerivedModelType::MeasuredScenarioID", XSD::QName.new(NsC_2019, "MeasuredScenarioID")], [0, 1]],
      ["models", ["BuildingSync::DerivedModelType::Models", XSD::QName.new(NsC_2019, "Models")]],
      ["savingsSummaries", ["BuildingSync::DerivedModelType::SavingsSummaries", XSD::QName.new(NsC_2019, "SavingsSummaries")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::MeasuredScenarioID,
    :schema_name => XSD::QName.new(NsC_2019, "MeasuredScenarioID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ResponseVariable,
    :schema_name => XSD::QName.new(NsC_2019, "ResponseVariable"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["responseVariableName", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "ResponseVariableName")]],
      ["responseVariableUnits", [nil, XSD::QName.new(NsC_2019, "ResponseVariableUnits")]],
      ["responseVariableEndUse", ["BuildingSync::EndUseType", XSD::QName.new(NsC_2019, "ResponseVariableEndUse")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ExplanatoryVariables::ExplanatoryVariable,
    :schema_name => XSD::QName.new(NsC_2019, "ExplanatoryVariable"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["explanatoryVariableName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ExplanatoryVariableName")]],
      ["explanatoryVariableUnits", [nil, XSD::QName.new(NsC_2019, "ExplanatoryVariableUnits")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ExplanatoryVariables,
    :schema_name => XSD::QName.new(NsC_2019, "ExplanatoryVariables"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["explanatoryVariable", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ExplanatoryVariables::ExplanatoryVariable[]", XSD::QName.new(NsC_2019, "ExplanatoryVariable")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs,
    :schema_name => XSD::QName.new(NsC_2019, "DerivedModelInputs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["intervalFrequency", ["BuildingSync::IntervalFrequencyType", XSD::QName.new(NsC_2019, "IntervalFrequency")], [0, 1]],
      ["responseVariable", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ResponseVariable", XSD::QName.new(NsC_2019, "ResponseVariable")]],
      ["explanatoryVariables", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs::ExplanatoryVariables", XSD::QName.new(NsC_2019, "ExplanatoryVariables")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients::Guideline14Model,
    :schema_name => XSD::QName.new(NsC_2019, "Guideline14Model"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["modelType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ModelType")]],
      ["intercept", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "Intercept")], [0, 1]],
      ["beta1", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "Beta1")], [0, 1]],
      ["beta2", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "Beta2")], [0, 1]],
      ["beta3", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "Beta3")], [0, 1]],
      ["beta4", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "Beta4")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients::TimeOfWeekTemperatureModel,
    :schema_name => XSD::QName.new(NsC_2019, "TimeOfWeekTemperatureModel"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients,
    :schema_name => XSD::QName.new(NsC_2019, "DerivedModelCoefficients"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["guideline14Model", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients::Guideline14Model", XSD::QName.new(NsC_2019, "Guideline14Model")]],
      ["timeOfWeekTemperatureModel", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients::TimeOfWeekTemperatureModel", XSD::QName.new(NsC_2019, "TimeOfWeekTemperatureModel")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::DerivedModelPerformance,
    :schema_name => XSD::QName.new(NsC_2019, "DerivedModelPerformance"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rSquared", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "RSquared")], [0, 1]],
      ["adjustedRSquared", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AdjustedRSquared")], [0, 1]],
      ["rMSE", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "RMSE")], [0, 1]],
      ["cVRMSE", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "CVRMSE")], [0, 1]],
      ["nDBE", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "NDBE")], [0, 1]],
      ["mBE", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "MBE")], [0, 1]],
      ["nMBE", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "NMBE")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::SummaryInformation,
    :schema_name => XSD::QName.new(NsC_2019, "SummaryInformation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["numberOfDataPoints", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "NumberOfDataPoints")], [0, 1]],
      ["numberOfParameters", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "NumberOfParameters")], [0, 1]],
      ["degreesOfFreedom", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "DegreesOfFreedom")], [0, 1]],
      ["aggregateActualEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AggregateActualEnergyUse")], [0, 1]],
      ["aggregateModeledEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AggregateModeledEnergyUse")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model::ModeledTimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "ModeledTimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models::Model,
    :schema_name => XSD::QName.new(NsC_2019, "Model"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "StartTimestamp")]],
      ["endTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "EndTimestamp")]],
      ["derivedModelInputs", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelInputs", XSD::QName.new(NsC_2019, "DerivedModelInputs")]],
      ["derivedModelCoefficients", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelCoefficients", XSD::QName.new(NsC_2019, "DerivedModelCoefficients")]],
      ["derivedModelPerformance", ["BuildingSync::DerivedModelType::Models::Model::DerivedModelPerformance", XSD::QName.new(NsC_2019, "DerivedModelPerformance")]],
      ["summaryInformation", ["BuildingSync::DerivedModelType::Models::Model::SummaryInformation", XSD::QName.new(NsC_2019, "SummaryInformation")], [0, 1]],
      ["modeledTimeSeriesData", ["BuildingSync::DerivedModelType::Models::Model::ModeledTimeSeriesData", XSD::QName.new(NsC_2019, "ModeledTimeSeriesData")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::Models,
    :schema_name => XSD::QName.new(NsC_2019, "Models"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["model", ["BuildingSync::DerivedModelType::Models::Model[]", XSD::QName.new(NsC_2019, "Model")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::BaselinePeriodModelID,
    :schema_name => XSD::QName.new(NsC_2019, "BaselinePeriodModelID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::ReportingPeriodModelID,
    :schema_name => XSD::QName.new(NsC_2019, "ReportingPeriodModelID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::ComparisonPeriodModeledTimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "ComparisonPeriodModeledTimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsBaselinePeriodModeledTimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "StandardConditionsBaselinePeriodModeledTimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsReportingPeriodModeledTimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "StandardConditionsReportingPeriodModeledTimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsTimeSeriesData,
    :schema_name => XSD::QName.new(NsC_2019, "StandardConditionsTimeSeriesData"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["timeSeries", ["BuildingSync::TimeSeriesType[]", XSD::QName.new(NsC_2019, "TimeSeries")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary,
    :schema_name => XSD::QName.new(NsC_2019, "SavingsSummary"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["baselinePeriodModelID", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::BaselinePeriodModelID", XSD::QName.new(NsC_2019, "BaselinePeriodModelID")], [0, 1]],
      ["reportingPeriodModelID", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::ReportingPeriodModelID", XSD::QName.new(NsC_2019, "ReportingPeriodModelID")], [0, 1]],
      ["normalizationMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "NormalizationMethod")]],
      ["comparisonPeriodStartTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "ComparisonPeriodStartTimestamp")]],
      ["comparisonPeriodEndTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "ComparisonPeriodEndTimestamp")]],
      ["comparisonPeriodAggregateActualEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "ComparisonPeriodAggregateActualEnergyUse")], [0, 1]],
      ["comparisonPeriodAggregateModeledEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "ComparisonPeriodAggregateModeledEnergyUse")], [0, 1]],
      ["avoidedEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "AvoidedEnergyUse")], [0, 1]],
      ["savingsUncertainty", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "SavingsUncertainty")], [0, 1]],
      ["confidenceLevel", [nil, XSD::QName.new(NsC_2019, "ConfidenceLevel")], [0, 1]],
      ["standardConditionsBaselinePeriodAggregateModeledEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "StandardConditionsBaselinePeriodAggregateModeledEnergyUse")], [0, 1]],
      ["standardConditionsReportingPeriodAggregateModeledEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "StandardConditionsReportingPeriodAggregateModeledEnergyUse")], [0, 1]],
      ["standardConditionsAvoidedEnergyUse", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "StandardConditionsAvoidedEnergyUse")], [0, 1]],
      ["comparisonPeriodModeledTimeSeriesData", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::ComparisonPeriodModeledTimeSeriesData", XSD::QName.new(NsC_2019, "ComparisonPeriodModeledTimeSeriesData")], [0, 1]],
      ["standardConditionsBaselinePeriodModeledTimeSeriesData", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsBaselinePeriodModeledTimeSeriesData", XSD::QName.new(NsC_2019, "StandardConditionsBaselinePeriodModeledTimeSeriesData")], [0, 1]],
      ["standardConditionsReportingPeriodModeledTimeSeriesData", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsReportingPeriodModeledTimeSeriesData", XSD::QName.new(NsC_2019, "StandardConditionsReportingPeriodModeledTimeSeriesData")], [0, 1]],
      ["standardConditionsTimeSeriesData", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary::StandardConditionsTimeSeriesData", XSD::QName.new(NsC_2019, "StandardConditionsTimeSeriesData")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::DerivedModelType::SavingsSummaries,
    :schema_name => XSD::QName.new(NsC_2019, "SavingsSummaries"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["savingsSummary", ["BuildingSync::DerivedModelType::SavingsSummaries::SavingsSummary", XSD::QName.new(NsC_2019, "SavingsSummary")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::EquipmentCondition,
    :schema_type => XSD::QName.new(NsC_2019, "EquipmentCondition")
  )

  Registry.register(
    :class => BuildingSync::InsulationCondition,
    :schema_type => XSD::QName.new(NsC_2019, "InsulationCondition")
  )

  Registry.register(
    :class => BuildingSync::State,
    :schema_type => XSD::QName.new(NsC_2019, "State")
  )

  Registry.register(
    :class => BuildingSync::FuelTypes,
    :schema_type => XSD::QName.new(NsC_2019, "FuelTypes")
  )

  Registry.register(
    :class => BuildingSync::EndUseType,
    :schema_type => XSD::QName.new(NsC_2019, "EndUseType")
  )

  Registry.register(
    :class => BuildingSync::OccupancyClassificationType,
    :schema_type => XSD::QName.new(NsC_2019, "OccupancyClassificationType")
  )

  Registry.register(
    :class => BuildingSync::RankType,
    :schema_type => XSD::QName.new(NsC_2019, "RankType")
  )

  Registry.register(
    :class => BuildingSync::EnvelopeConstructionType,
    :schema_type => XSD::QName.new(NsC_2019, "EnvelopeConstructionType")
  )

  Registry.register(
    :class => BuildingSync::AuditorQualificationType,
    :schema_type => XSD::QName.new(NsC_2019, "AuditorQualificationType")
  )

  Registry.register(
    :class => BuildingSync::InsulationMaterialType,
    :schema_type => XSD::QName.new(NsC_2019, "InsulationMaterialType")
  )

  Registry.register(
    :class => BuildingSync::ControlStrategyGeneralType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlStrategyGeneralType")
  )

  Registry.register(
    :class => BuildingSync::ControlStrategyLightingType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlStrategyLightingType")
  )

  Registry.register(
    :class => BuildingSync::ControlSensorOccupancyType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlSensorOccupancyType")
  )

  Registry.register(
    :class => BuildingSync::ControlSensorDaylightingType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlSensorDaylightingType")
  )

  Registry.register(
    :class => BuildingSync::ControlStrategyDaylightingType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlStrategyDaylightingType")
  )

  Registry.register(
    :class => BuildingSync::ControlStrategyOccupancyType,
    :schema_type => XSD::QName.new(NsC_2019, "ControlStrategyOccupancyType")
  )

  Registry.register(
    :class => BuildingSync::CommunicationProtocolAnalogType,
    :schema_type => XSD::QName.new(NsC_2019, "CommunicationProtocolAnalogType")
  )

  Registry.register(
    :class => BuildingSync::CommunicationProtocolDigitalType,
    :schema_type => XSD::QName.new(NsC_2019, "CommunicationProtocolDigitalType")
  )

  Registry.register(
    :class => BuildingSync::Finish,
    :schema_type => XSD::QName.new(NsC_2019, "Finish")
  )

  Registry.register(
    :class => BuildingSync::Color,
    :schema_type => XSD::QName.new(NsC_2019, "Color")
  )

  Registry.register(
    :class => BuildingSync::FramingMaterial,
    :schema_type => XSD::QName.new(NsC_2019, "FramingMaterial")
  )

  Registry.register(
    :class => BuildingSync::ExteriorRoughnessType,
    :schema_type => XSD::QName.new(NsC_2019, "ExteriorRoughnessType")
  )

  Registry.register(
    :class => BuildingSync::Tightness,
    :schema_type => XSD::QName.new(NsC_2019, "Tightness")
  )

  Registry.register(
    :class => BuildingSync::LowMedHigh,
    :schema_type => XSD::QName.new(NsC_2019, "LowMedHigh")
  )

  Registry.register(
    :class => BuildingSync::IntervalFrequencyType,
    :schema_type => XSD::QName.new(NsC_2019, "IntervalFrequencyType")
  )

  Registry.register(
    :class => BuildingSync::OtherUnitsType,
    :schema_type => XSD::QName.new(NsC_2019, "OtherUnitsType")
  )

  Registry.register(
    :class => BuildingSync::DimensionlessUnitsBaseType,
    :schema_type => XSD::QName.new(NsC_2019, "DimensionlessUnitsBaseType")
  )

  Registry.register(
    :class => BuildingSync::PeakResourceUnitsBaseType,
    :schema_type => XSD::QName.new(NsC_2019, "PeakResourceUnitsBaseType")
  )

  Registry.register(
    :class => BuildingSync::PressureUnitsBaseType,
    :schema_type => XSD::QName.new(NsC_2019, "PressureUnitsBaseType")
  )

  Registry.register(
    :class => BuildingSync::ResourceUnitsBaseType,
    :schema_type => XSD::QName.new(NsC_2019, "ResourceUnitsBaseType")
  )

  Registry.register(
    :class => BuildingSync::TemperatureUnitsBaseType,
    :schema_type => XSD::QName.new(NsC_2019, "TemperatureUnitsBaseType")
  )

  Registry.register(
    :class => BuildingSync::AbsorptanceUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "absorptanceUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::AirTemperatureTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "airTemperatureTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ResetTemperatureTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "resetTemperatureTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::AreaUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "areaUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::BaseboardHeatingTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "baseboardHeatingTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::BlowerDoorUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "blowerDoorUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::BuildingTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "buildingTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CapacityTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "capacityTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CapacityUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "capacityUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ConditioningUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "conditioningUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ConditionTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "conditionTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ConditioningTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "conditioningTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ConductivityFofTUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "conductivityFofTUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ConductivityUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "conductivityUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ControlTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "controlTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CoolingCoilSetpointResetTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "coolingCoilSetpointResetTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CoolingCoilTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "coolingCoilTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CostTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "costTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::CurrencyTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "currencyTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::DamperHeatingActionEnum,
    :schema_type => XSD::QName.new(NsSchema, "damperHeatingActionEnum")
  )

  Registry.register(
    :class => BuildingSync::DayTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "dayTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::DefrostControlEnum,
    :schema_type => XSD::QName.new(NsSchema, "defrostControlEnum")
  )

  Registry.register(
    :class => BuildingSync::DefrostStrategyEnum,
    :schema_type => XSD::QName.new(NsSchema, "defrostStrategyEnum")
  )

  Registry.register(
    :class => BuildingSync::DeltaPUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "deltaPUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::DensityUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "densityUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::DensityFofTUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "densityFofTUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::DirectionUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "directionUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::EconomizerLockoutEnum,
    :schema_type => XSD::QName.new(NsSchema, "economizerLockoutEnum")
  )

  Registry.register(
    :class => BuildingSync::EnthalpyTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "enthalpyTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::EnthalpyUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "enthalpyUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::EquipmentTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "equipmentTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::EfficiencyTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "efficiencyTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::EmissionUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "emissionUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::EmittanceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "emittanceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::EnergyUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "energyUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::EntityTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "entityTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ExtEquipTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "extEquipTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::FloorCategoryEnum,
    :schema_type => XSD::QName.new(NsSchema, "floorCategoryEnum")
  )

  Registry.register(
    :class => BuildingSync::FloorSlabPerimeterHeatLossCoefficientUnitTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "floorSlabPerimeterHeatLossCoefficientUnitTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::FlowUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "flowUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::FlowPerAreaUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "flowPerAreaUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::FlowTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "flowTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::FluidTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "fluidTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::FrameTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "frameTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::FuelLoadUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "fuelLoadUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::GasTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "gasTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::HeatingCoilSetpointResetTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "heatingCoilSetpointResetTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::HeatRecoveryTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "heatRecoveryTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::HOutsideUnitTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "hOutsideUnitTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::HydronicEquipTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "hydronicEquipTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::IlluminanceUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "illuminanceUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::InfiltrationTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "infiltrationTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::IntEquipTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "intEquipTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::InverseTempUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "inverseTempUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::LengthUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "lengthUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::LifeUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "lifeUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::LightControlTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "lightControlTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::LoadUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "loadUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::LoopTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "loopTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::MinimumOutdoorAirControlTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "minimumOutdoorAirControlTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::NightCycleControlEnum,
    :schema_type => XSD::QName.new(NsSchema, "nightCycleControlEnum")
  )

  Registry.register(
    :class => BuildingSync::OpeningTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "openingTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::OperationTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "operationTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::PeopleHeatGainUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "peopleHeatGainUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::PeopleHeatGainTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "peopleHeatGainTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::PeopleNumberUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "peopleNumberUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::PermUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "permUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::PowerTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "powerTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::PowerUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "powerUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::PowerUseTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "powerUseTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::PowerPerAreaUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "powerPerAreaUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::PreheatCoilTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "preheatCoilTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::PressureUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "pressureUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::RadiationWavelengthTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "radiationWavelengthTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ReflectanceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "reflectanceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ResistanceUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "resistanceUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::UValueUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "uValueUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ResourceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "resourceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ResultsExtraResourceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "resultsExtraResourceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ResultsTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "resultsTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::RoofASHRAENumberEnum,
    :schema_type => XSD::QName.new(NsSchema, "roofASHRAENumberEnum")
  )

  Registry.register(
    :class => BuildingSync::RoofCLTDIndexEnum,
    :schema_type => XSD::QName.new(NsSchema, "roofCLTDIndexEnum")
  )

  Registry.register(
    :class => BuildingSync::RoofColorEnum,
    :schema_type => XSD::QName.new(NsSchema, "roofColorEnum")
  )

  Registry.register(
    :class => BuildingSync::RoofCTSTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "roofCTSTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::RoughnessValueEnum,
    :schema_type => XSD::QName.new(NsSchema, "roughnessValueEnum")
  )

  Registry.register(
    :class => BuildingSync::ScheduleTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "scheduleTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ScheduleTypeLimitsEnum,
    :schema_type => XSD::QName.new(NsSchema, "scheduleTypeLimitsEnum")
  )

  Registry.register(
    :class => BuildingSync::ShadeTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "shadeTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::ShadeOperationEnum,
    :schema_type => XSD::QName.new(NsSchema, "shadeOperationEnum")
  )

  Registry.register(
    :class => BuildingSync::ShadeScheduleTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "shadeScheduleTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SinkRateUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "sinkRateUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::SpaceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "spaceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SpecificHeatUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "specificHeatUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::StageTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "stageTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::StandardsTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "standardsTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::StationIdTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "stationIdTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SupplementalHeatingCoilTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "supplementalHeatingCoilTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SurfaceDescriptionEnum,
    :schema_type => XSD::QName.new(NsSchema, "surfaceDescriptionEnum")
  )

  Registry.register(
    :class => BuildingSync::SurfaceTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "surfaceTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SystemTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "systemTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::TemperatureUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "temperatureUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::TempTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "tempTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::TimePeriodEnum,
    :schema_type => XSD::QName.new(NsSchema, "timePeriodEnum")
  )

  Registry.register(
    :class => BuildingSync::TimeUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "timeUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::TransportationTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "transportationTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::UnitlessSmallUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "unitlessSmallUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::UnitlessUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "unitlessUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ValueTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "valueTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::VegetationTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "vegetationTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::VelocityUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "velocityUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::WindSpeedEnum,
    :schema_type => XSD::QName.new(NsSchema, "windSpeedEnum")
  )

  Registry.register(
    :class => BuildingSync::VersionEnum,
    :schema_type => XSD::QName.new(NsSchema, "versionEnum")
  )

  Registry.register(
    :class => BuildingSync::ViscosityUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "viscosityUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::ViscosityFofTUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "viscosityFofTUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::VolumeUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "volumeUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::WallASHRAEGroupEnum,
    :schema_type => XSD::QName.new(NsSchema, "wallASHRAEGroupEnum")
  )

  Registry.register(
    :class => BuildingSync::WallColorEnum,
    :schema_type => XSD::QName.new(NsSchema, "wallColorEnum")
  )

  Registry.register(
    :class => BuildingSync::WallCTSTypeEnum,
    :schema_type => XSD::QName.new(NsSchema, "wallCTSTypeEnum")
  )

  Registry.register(
    :class => BuildingSync::SurfaceReferenceLocationEnum,
    :schema_type => XSD::QName.new(NsSchema, "surfaceReferenceLocationEnum")
  )

  Registry.register(
    :class => BuildingSync::WallGroupManualJEnum,
    :schema_type => XSD::QName.new(NsSchema, "wallGroupManualJEnum")
  )

  Registry.register(
    :class => BuildingSync::WaterUseUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "waterUseUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::WeightUnitEnum,
    :schema_type => XSD::QName.new(NsSchema, "weightUnitEnum")
  )

  Registry.register(
    :class => BuildingSync::BuildingSync,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingSync"),
    :schema_element => [
      ["programs", ["BuildingSync::BuildingSync::Programs", XSD::QName.new(NsC_2019, "Programs")], [0, 1]],
      ["facilities", ["BuildingSync::BuildingSync::Facilities", XSD::QName.new(NsC_2019, "Facilities")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "version") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Programs::Program,
    :schema_name => XSD::QName.new(NsC_2019, "Program"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["programDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "ProgramDate")], [0, 1]],
      ["programFundingSource", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ProgramFundingSource")], [0, 1]],
      ["programClassification", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ProgramClassification")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Programs,
    :schema_name => XSD::QName.new(NsC_2019, "Programs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["program", ["BuildingSync::BuildingSync::Programs::Program[]", XSD::QName.new(NsC_2019, "Program")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Sites,
    :schema_name => XSD::QName.new(NsC_2019, "Sites"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["site", ["BuildingSync::SiteType[]", XSD::QName.new(NsC_2019, "Site")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::HVACSystems,
    :schema_name => XSD::QName.new(NsC_2019, "HVACSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["hVACSystem", ["BuildingSync::HVACSystemType[]", XSD::QName.new(NsC_2019, "HVACSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::LightingSystems,
    :schema_name => XSD::QName.new(NsC_2019, "LightingSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["lightingSystem", ["BuildingSync::LightingSystemType[]", XSD::QName.new(NsC_2019, "LightingSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::DomesticHotWaterSystems,
    :schema_name => XSD::QName.new(NsC_2019, "DomesticHotWaterSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["domesticHotWaterSystem", ["BuildingSync::DomesticHotWaterSystemType[]", XSD::QName.new(NsC_2019, "DomesticHotWaterSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::CookingSystems,
    :schema_name => XSD::QName.new(NsC_2019, "CookingSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["cookingSystem", ["BuildingSync::CookingSystemType[]", XSD::QName.new(NsC_2019, "CookingSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::RefrigerationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["refrigerationSystem", ["BuildingSync::RefrigerationSystemType[]", XSD::QName.new(NsC_2019, "RefrigerationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::DishwasherSystems,
    :schema_name => XSD::QName.new(NsC_2019, "DishwasherSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["dishwasherSystem", ["BuildingSync::DishwasherSystemType[]", XSD::QName.new(NsC_2019, "DishwasherSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::LaundrySystems,
    :schema_name => XSD::QName.new(NsC_2019, "LaundrySystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["laundrySystem", ["BuildingSync::LaundrySystemType[]", XSD::QName.new(NsC_2019, "LaundrySystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::PumpSystems,
    :schema_name => XSD::QName.new(NsC_2019, "PumpSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pumpSystem", ["BuildingSync::PumpSystemType[]", XSD::QName.new(NsC_2019, "PumpSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::FanSystems,
    :schema_name => XSD::QName.new(NsC_2019, "FanSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fanSystem", ["BuildingSync::FanSystemType[]", XSD::QName.new(NsC_2019, "FanSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::MotorSystems,
    :schema_name => XSD::QName.new(NsC_2019, "MotorSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["motorSystem", ["BuildingSync::MotorSystemType[]", XSD::QName.new(NsC_2019, "MotorSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::HeatRecoverySystems,
    :schema_name => XSD::QName.new(NsC_2019, "HeatRecoverySystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["heatRecoverySystem", ["BuildingSync::HeatRecoverySystemType[]", XSD::QName.new(NsC_2019, "HeatRecoverySystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WallSystems,
    :schema_name => XSD::QName.new(NsC_2019, "WallSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["wallSystem", ["BuildingSync::WallSystemType[]", XSD::QName.new(NsC_2019, "WallSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::RoofSystems,
    :schema_name => XSD::QName.new(NsC_2019, "RoofSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["roofSystem", ["BuildingSync::RoofSystemType[]", XSD::QName.new(NsC_2019, "RoofSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::CeilingSystems,
    :schema_name => XSD::QName.new(NsC_2019, "CeilingSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ceilingSystem", ["BuildingSync::CeilingSystemType[]", XSD::QName.new(NsC_2019, "CeilingSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::FenestrationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "FenestrationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fenestrationSystem", ["BuildingSync::FenestrationSystemType[]", XSD::QName.new(NsC_2019, "FenestrationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::ExteriorFloorSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorFloorSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["exteriorFloorSystem", ["BuildingSync::ExteriorFloorSystemType[]", XSD::QName.new(NsC_2019, "ExteriorFloorSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::FoundationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["foundationSystem", ["BuildingSync::FoundationSystemType[]", XSD::QName.new(NsC_2019, "FoundationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::CriticalITSystems,
    :schema_name => XSD::QName.new(NsC_2019, "CriticalITSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["criticalITSystem", ["BuildingSync::CriticalITSystemType[]", XSD::QName.new(NsC_2019, "CriticalITSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::PlugLoads,
    :schema_name => XSD::QName.new(NsC_2019, "PlugLoads"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["plugLoad", ["BuildingSync::PlugElectricLoadType[]", XSD::QName.new(NsC_2019, "PlugLoad")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::ProcessLoads,
    :schema_name => XSD::QName.new(NsC_2019, "ProcessLoads"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["processLoad", ["BuildingSync::ProcessGasElectricLoadType[]", XSD::QName.new(NsC_2019, "ProcessLoad")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::ConveyanceSystems,
    :schema_name => XSD::QName.new(NsC_2019, "ConveyanceSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["conveyanceSystem", ["BuildingSync::ConveyanceSystemType[]", XSD::QName.new(NsC_2019, "ConveyanceSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::OnsiteStorageTransmissionGenerationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "OnsiteStorageTransmissionGenerationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["onsiteStorageTransmissionGenerationSystem", ["BuildingSync::OnsiteStorageTransmissionGenerationSystemType[]", XSD::QName.new(NsC_2019, "OnsiteStorageTransmissionGenerationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::Pools,
    :schema_name => XSD::QName.new(NsC_2019, "Pools"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pool", ["BuildingSync::PoolType[]", XSD::QName.new(NsC_2019, "Pool")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterUses,
    :schema_name => XSD::QName.new(NsC_2019, "WaterUses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterUse", ["BuildingSync::WaterUseType[]", XSD::QName.new(NsC_2019, "WaterUse")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems::AirInfiltrationSystem::AirInfiltrationValue,
    :schema_name => XSD::QName.new(NsC_2019, "AirInfiltrationValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems::AirInfiltrationSystem,
    :schema_name => XSD::QName.new(NsC_2019, "AirInfiltrationSystem"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["airInfiltrationNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirInfiltrationNotes")], [0, 1]],
      ["tightness", ["BuildingSync::Tightness", XSD::QName.new(NsC_2019, "Tightness")], [0, 1]],
      ["airInfiltrationValue", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems::AirInfiltrationSystem::AirInfiltrationValue", XSD::QName.new(NsC_2019, "AirInfiltrationValue")], [0, 1]],
      ["airInfiltrationValueUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirInfiltrationValueUnits")], [0, 1]],
      ["airInfiltrationTest", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirInfiltrationTest")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "AirInfiltrationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["airInfiltrationSystem", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems::AirInfiltrationSystem[]", XSD::QName.new(NsC_2019, "AirInfiltrationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem::LocationsOfExteriorWaterIntrusionDamages,
    :schema_name => XSD::QName.new(NsC_2019, "LocationsOfExteriorWaterIntrusionDamages"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["locationsOfExteriorWaterIntrusionDamage", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "LocationsOfExteriorWaterIntrusionDamage")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem::LocationsOfInteriorWaterIntrusionDamages,
    :schema_name => XSD::QName.new(NsC_2019, "LocationsOfInteriorWaterIntrusionDamages"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["locationsOfInteriorWaterIntrusionDamage", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "LocationsOfInteriorWaterIntrusionDamage")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem,
    :schema_name => XSD::QName.new(NsC_2019, "WaterInfiltrationSystem"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterInfiltrationNotes", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WaterInfiltrationNotes")], [0, 1]],
      ["locationsOfExteriorWaterIntrusionDamages", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem::LocationsOfExteriorWaterIntrusionDamages", XSD::QName.new(NsC_2019, "LocationsOfExteriorWaterIntrusionDamages")], [0, 1]],
      ["locationsOfInteriorWaterIntrusionDamages", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem::LocationsOfInteriorWaterIntrusionDamages", XSD::QName.new(NsC_2019, "LocationsOfInteriorWaterIntrusionDamages")], [0, 1]],
      ["linkedPremises", ["BuildingSync::LinkedPremises", XSD::QName.new(NsC_2019, "LinkedPremises")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems,
    :schema_name => XSD::QName.new(NsC_2019, "WaterInfiltrationSystems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["waterInfiltrationSystem", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems::WaterInfiltrationSystem[]", XSD::QName.new(NsC_2019, "WaterInfiltrationSystem")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Systems,
    :schema_name => XSD::QName.new(NsC_2019, "Systems"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["hVACSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::HVACSystems", XSD::QName.new(NsC_2019, "HVACSystems")], [0, 1]],
      ["lightingSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::LightingSystems", XSD::QName.new(NsC_2019, "LightingSystems")], [0, 1]],
      ["domesticHotWaterSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::DomesticHotWaterSystems", XSD::QName.new(NsC_2019, "DomesticHotWaterSystems")], [0, 1]],
      ["cookingSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::CookingSystems", XSD::QName.new(NsC_2019, "CookingSystems")], [0, 1]],
      ["refrigerationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::RefrigerationSystems", XSD::QName.new(NsC_2019, "RefrigerationSystems")], [0, 1]],
      ["dishwasherSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::DishwasherSystems", XSD::QName.new(NsC_2019, "DishwasherSystems")], [0, 1]],
      ["laundrySystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::LaundrySystems", XSD::QName.new(NsC_2019, "LaundrySystems")], [0, 1]],
      ["pumpSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::PumpSystems", XSD::QName.new(NsC_2019, "PumpSystems")], [0, 1]],
      ["fanSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::FanSystems", XSD::QName.new(NsC_2019, "FanSystems")], [0, 1]],
      ["motorSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::MotorSystems", XSD::QName.new(NsC_2019, "MotorSystems")], [0, 1]],
      ["heatRecoverySystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::HeatRecoverySystems", XSD::QName.new(NsC_2019, "HeatRecoverySystems")], [0, 1]],
      ["wallSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WallSystems", XSD::QName.new(NsC_2019, "WallSystems")], [0, 1]],
      ["roofSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::RoofSystems", XSD::QName.new(NsC_2019, "RoofSystems")], [0, 1]],
      ["ceilingSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::CeilingSystems", XSD::QName.new(NsC_2019, "CeilingSystems")], [0, 1]],
      ["fenestrationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::FenestrationSystems", XSD::QName.new(NsC_2019, "FenestrationSystems")], [0, 1]],
      ["exteriorFloorSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::ExteriorFloorSystems", XSD::QName.new(NsC_2019, "ExteriorFloorSystems")], [0, 1]],
      ["foundationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::FoundationSystems", XSD::QName.new(NsC_2019, "FoundationSystems")], [0, 1]],
      ["criticalITSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::CriticalITSystems", XSD::QName.new(NsC_2019, "CriticalITSystems")], [0, 1]],
      ["plugLoads", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::PlugLoads", XSD::QName.new(NsC_2019, "PlugLoads")], [0, 1]],
      ["processLoads", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::ProcessLoads", XSD::QName.new(NsC_2019, "ProcessLoads")], [0, 1]],
      ["conveyanceSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::ConveyanceSystems", XSD::QName.new(NsC_2019, "ConveyanceSystems")], [0, 1]],
      ["onsiteStorageTransmissionGenerationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::OnsiteStorageTransmissionGenerationSystems", XSD::QName.new(NsC_2019, "OnsiteStorageTransmissionGenerationSystems")], [0, 1]],
      ["pools", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::Pools", XSD::QName.new(NsC_2019, "Pools")], [0, 1]],
      ["waterUses", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterUses", XSD::QName.new(NsC_2019, "WaterUses")], [0, 1]],
      ["airInfiltrationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::AirInfiltrationSystems", XSD::QName.new(NsC_2019, "AirInfiltrationSystems")], [0, 1]],
      ["waterInfiltrationSystems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems::WaterInfiltrationSystems", XSD::QName.new(NsC_2019, "WaterInfiltrationSystems")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Schedules,
    :schema_name => XSD::QName.new(NsC_2019, "Schedules"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["schedule", ["BuildingSync::ScheduleType[]", XSD::QName.new(NsC_2019, "Schedule")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Measures,
    :schema_name => XSD::QName.new(NsC_2019, "Measures"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measure", ["BuildingSync::MeasureType[]", XSD::QName.new(NsC_2019, "Measure")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Reports,
    :schema_name => XSD::QName.new(NsC_2019, "Reports"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["report", ["BuildingSync::ReportType[]", XSD::QName.new(NsC_2019, "Report")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Contacts,
    :schema_name => XSD::QName.new(NsC_2019, "Contacts"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["contact", ["BuildingSync::ContactType[]", XSD::QName.new(NsC_2019, "Contact")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::Tenants,
    :schema_name => XSD::QName.new(NsC_2019, "Tenants"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["tenant", ["BuildingSync::TenantType[]", XSD::QName.new(NsC_2019, "Tenant")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility::AuditCycles,
    :schema_name => XSD::QName.new(NsC_2019, "AuditCycles"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["auditCycle", ["BuildingSync::AuditCycleType[]", XSD::QName.new(NsC_2019, "AuditCycle")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities::Facility,
    :schema_name => XSD::QName.new(NsC_2019, "Facility"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["sites", ["BuildingSync::BuildingSync::Facilities::Facility::Sites", XSD::QName.new(NsC_2019, "Sites")], [0, 1]],
      ["systems", ["BuildingSync::BuildingSync::Facilities::Facility::Systems", XSD::QName.new(NsC_2019, "Systems")], [0, 1]],
      ["schedules", ["BuildingSync::BuildingSync::Facilities::Facility::Schedules", XSD::QName.new(NsC_2019, "Schedules")], [0, 1]],
      ["measures", ["BuildingSync::BuildingSync::Facilities::Facility::Measures", XSD::QName.new(NsC_2019, "Measures")], [0, 1]],
      ["reports", ["BuildingSync::BuildingSync::Facilities::Facility::Reports", XSD::QName.new(NsC_2019, "Reports")], [0, 1]],
      ["contacts", ["BuildingSync::BuildingSync::Facilities::Facility::Contacts", XSD::QName.new(NsC_2019, "Contacts")], [0, 1]],
      ["tenants", ["BuildingSync::BuildingSync::Facilities::Facility::Tenants", XSD::QName.new(NsC_2019, "Tenants")], [0, 1]],
      ["auditCycles", ["BuildingSync::BuildingSync::Facilities::Facility::AuditCycles", XSD::QName.new(NsC_2019, "AuditCycles")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingSync::Facilities,
    :schema_name => XSD::QName.new(NsC_2019, "Facilities"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["facility", ["BuildingSync::BuildingSync::Facilities::Facility[]", XSD::QName.new(NsC_2019, "Facility")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PrincipalHVACSystemType,
    :schema_name => XSD::QName.new(NsC_2019, "PrincipalHVACSystemType")
  )

  Registry.register(
    :class => BuildingSync::PrincipalLightingSystemType,
    :schema_name => XSD::QName.new(NsC_2019, "PrincipalLightingSystemType")
  )

  Registry.register(
    :class => BuildingSync::Quantity,
    :schema_name => XSD::QName.new(NsC_2019, "Quantity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Location,
    :schema_name => XSD::QName.new(NsC_2019, "Location")
  )

  Registry.register(
    :class => BuildingSync::FuelTypes,
    :schema_name => XSD::QName.new(NsC_2019, "PrimaryFuel")
  )

  Registry.register(
    :class => BuildingSync::Capacity,
    :schema_name => XSD::QName.new(NsC_2019, "Capacity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CapacityUnits,
    :schema_name => XSD::QName.new(NsC_2019, "CapacityUnits")
  )

  Registry.register(
    :class => BuildingSync::ControlTechnology,
    :schema_name => XSD::QName.new(NsC_2019, "ControlTechnology")
  )

  Registry.register(
    :class => BuildingSync::Refrigerant,
    :schema_name => XSD::QName.new(NsC_2019, "Refrigerant")
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType,
    :schema_name => XSD::QName.new(NsC_2019, "CalculationMethod"),
    :schema_element => [ :choice,
      ["modeled", ["BuildingSync::CalculationMethodType::Modeled", XSD::QName.new(NsC_2019, "Modeled")], [0, 1]],
      ["measured", ["BuildingSync::CalculationMethodType::Measured", XSD::QName.new(NsC_2019, "Measured")], [0, 1]],
      ["estimated", ["BuildingSync::EstimatedType", XSD::QName.new(NsC_2019, "Estimated")], [0, 1]],
      ["engineeringCalculation", ["BuildingSync::EngineeringCalculationType", XSD::QName.new(NsC_2019, "EngineeringCalculation")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Modeled,
    :schema_name => XSD::QName.new(NsC_2019, "Modeled"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["softwareProgramUsed", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SoftwareProgramUsed")], [0, 1]],
      ["softwareProgramVersion", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SoftwareProgramVersion")], [0, 1]],
      ["weatherDataType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherDataType")], [0, 1]],
      ["simulationCompletionStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SimulationCompletionStatus")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::UtilityBills,
    :schema_name => XSD::QName.new(NsC_2019, "UtilityBills"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["utilityMeterNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "UtilityMeterNumber")], [0, nil]],
      ["utilityAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityAccountNumber")], [0, 1]],
      ["utilityBillpayer", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "UtilityBillpayer")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::DirectMeasurement,
    :schema_name => XSD::QName.new(NsC_2019, "DirectMeasurement"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource,
    :schema_name => XSD::QName.new(NsC_2019, "MeasuredEnergySource"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["utilityBills", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::UtilityBills", XSD::QName.new(NsC_2019, "UtilityBills")], [0, 1]],
      ["directMeasurement", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource::DirectMeasurement", XSD::QName.new(NsC_2019, "DirectMeasurement")], [0, 1]],
      ["other", ["BuildingSync::OtherType", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CalculationMethodType::Measured,
    :schema_name => XSD::QName.new(NsC_2019, "Measured"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["measuredEnergySource", ["BuildingSync::CalculationMethodType::Measured::MeasuredEnergySource", XSD::QName.new(NsC_2019, "MeasuredEnergySource")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedPremises"),
    :schema_element => [
      ["facility", ["BuildingSync::LinkedPremises::Facility", XSD::QName.new(NsC_2019, "Facility")], [0, 1]],
      ["site", ["BuildingSync::LinkedPremises::Site", XSD::QName.new(NsC_2019, "Site")], [0, 1]],
      ["building", ["BuildingSync::LinkedPremises::Building", XSD::QName.new(NsC_2019, "Building")], [0, 1]],
      ["section", ["BuildingSync::LinkedPremises::Section", XSD::QName.new(NsC_2019, "Section")], [0, 1]],
      ["thermalZone", ["BuildingSync::LinkedPremises::ThermalZone", XSD::QName.new(NsC_2019, "ThermalZone")], [0, 1]],
      ["space", ["BuildingSync::LinkedPremises::Space", XSD::QName.new(NsC_2019, "Space")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::Facility,
    :schema_name => XSD::QName.new(NsC_2019, "Facility"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedFacilityID", ["BuildingSync::LinkedFacilityID[]", XSD::QName.new(NsC_2019, "LinkedFacilityID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::Site,
    :schema_name => XSD::QName.new(NsC_2019, "Site"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSiteID", ["BuildingSync::LinkedSiteID[]", XSD::QName.new(NsC_2019, "LinkedSiteID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::Building,
    :schema_name => XSD::QName.new(NsC_2019, "Building"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedBuildingID", ["BuildingSync::LinkedBuildingID[]", XSD::QName.new(NsC_2019, "LinkedBuildingID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::Section,
    :schema_name => XSD::QName.new(NsC_2019, "Section"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSectionID", ["BuildingSync::LinkedSectionID[]", XSD::QName.new(NsC_2019, "LinkedSectionID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::ThermalZone,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalZone"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedThermalZoneID", ["BuildingSync::LinkedThermalZoneID[]", XSD::QName.new(NsC_2019, "LinkedThermalZoneID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremises::Space,
    :schema_name => XSD::QName.new(NsC_2019, "Space"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSpaceID", ["BuildingSync::LinkedSpaceID[]", XSD::QName.new(NsC_2019, "LinkedSpaceID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedPremisesOrSystem"),
    :schema_element => [
      ["facility", ["BuildingSync::LinkedPremisesOrSystem::Facility", XSD::QName.new(NsC_2019, "Facility")], [0, 1]],
      ["site", ["BuildingSync::LinkedPremisesOrSystem::Site", XSD::QName.new(NsC_2019, "Site")], [0, 1]],
      ["building", ["BuildingSync::LinkedPremisesOrSystem::Building", XSD::QName.new(NsC_2019, "Building")], [0, 1]],
      ["section", ["BuildingSync::LinkedPremisesOrSystem::Section", XSD::QName.new(NsC_2019, "Section")], [0, 1]],
      ["thermalZone", ["BuildingSync::LinkedPremisesOrSystem::ThermalZone", XSD::QName.new(NsC_2019, "ThermalZone")], [0, 1]],
      ["space", ["BuildingSync::LinkedPremisesOrSystem::Space", XSD::QName.new(NsC_2019, "Space")], [0, 1]],
      ["system", ["BuildingSync::LinkedPremisesOrSystem::System", XSD::QName.new(NsC_2019, "System")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::Facility,
    :schema_name => XSD::QName.new(NsC_2019, "Facility"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedFacilityID", ["BuildingSync::LinkedFacilityID[]", XSD::QName.new(NsC_2019, "LinkedFacilityID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::Site,
    :schema_name => XSD::QName.new(NsC_2019, "Site"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSiteID", ["BuildingSync::LinkedSiteID[]", XSD::QName.new(NsC_2019, "LinkedSiteID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::Building,
    :schema_name => XSD::QName.new(NsC_2019, "Building"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedBuildingID", ["BuildingSync::LinkedBuildingID[]", XSD::QName.new(NsC_2019, "LinkedBuildingID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::Section,
    :schema_name => XSD::QName.new(NsC_2019, "Section"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSectionID", ["BuildingSync::LinkedSectionID[]", XSD::QName.new(NsC_2019, "LinkedSectionID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::ThermalZone,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalZone"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedThermalZoneID", ["BuildingSync::LinkedThermalZoneID[]", XSD::QName.new(NsC_2019, "LinkedThermalZoneID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::Space,
    :schema_name => XSD::QName.new(NsC_2019, "Space"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSpaceID", ["BuildingSync::LinkedSpaceID[]", XSD::QName.new(NsC_2019, "LinkedSpaceID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedPremisesOrSystem::System,
    :schema_name => XSD::QName.new(NsC_2019, "System"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["linkedSystemID", ["BuildingSync::LinkedSystemID[]", XSD::QName.new(NsC_2019, "LinkedSystemID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Address,
    :schema_name => XSD::QName.new(NsC_2019, "Address"),
    :schema_element => [
      ["streetAddressDetail", ["BuildingSync::Address::StreetAddressDetail", XSD::QName.new(NsC_2019, "StreetAddressDetail")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "City")], [0, 1]],
      ["state", ["BuildingSync::State", XSD::QName.new(NsC_2019, "State")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PostalCode")], [0, 1]],
      ["postalCodePlus4", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PostalCodePlus4")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "County")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Country")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Address::StreetAddressDetail::Simplified,
    :schema_name => XSD::QName.new(NsC_2019, "Simplified"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["streetAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetAddress")], [0, 1]],
      ["streetAdditionalInfo", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetAdditionalInfo")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Address::StreetAddressDetail::Complex::StreetNumberNumeric,
    :schema_name => XSD::QName.new(NsC_2019, "StreetNumberNumeric"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Address::StreetAddressDetail::Complex,
    :schema_name => XSD::QName.new(NsC_2019, "Complex"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["streetNumberPrefix", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetNumberPrefix")], [0, 1]],
      ["streetNumberNumeric", ["BuildingSync::Address::StreetAddressDetail::Complex::StreetNumberNumeric", XSD::QName.new(NsC_2019, "StreetNumberNumeric")], [0, 1]],
      ["streetNumberSuffix", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetNumberSuffix")], [0, 1]],
      ["streetDirPrefix", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetDirPrefix")], [0, 1]],
      ["streetName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetName")], [0, 1]],
      ["streetAdditionalInfo", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetAdditionalInfo")], [0, 1]],
      ["streetSuffix", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetSuffix")], [0, 1]],
      ["streetSuffixModifier", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetSuffixModifier")], [0, 1]],
      ["streetDirSuffix", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "StreetDirSuffix")], [0, 1]],
      ["subaddressType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SubaddressType")], [0, 1]],
      ["subaddressIdentifier", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SubaddressIdentifier")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Address::StreetAddressDetail,
    :schema_name => XSD::QName.new(NsC_2019, "StreetAddressDetail"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["simplified", ["BuildingSync::Address::StreetAddressDetail::Simplified", XSD::QName.new(NsC_2019, "Simplified")], [0, 1]],
      ["complex", ["BuildingSync::Address::StreetAddressDetail::Complex", XSD::QName.new(NsC_2019, "Complex")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ThirdPartyCertification,
    :schema_name => XSD::QName.new(NsC_2019, "ThirdPartyCertification")
  )

  Registry.register(
    :class => BuildingSync::Ownership,
    :schema_name => XSD::QName.new(NsC_2019, "Ownership")
  )

  Registry.register(
    :class => BuildingSync::OwnershipStatus,
    :schema_name => XSD::QName.new(NsC_2019, "OwnershipStatus")
  )

  Registry.register(
    :class => BuildingSync::IdentifierLabel,
    :schema_name => XSD::QName.new(NsC_2019, "IdentifierLabel")
  )

  Registry.register(
    :class => BuildingSync::PremisesIdentifiers,
    :schema_name => XSD::QName.new(NsC_2019, "PremisesIdentifiers"),
    :schema_element => [
      ["premisesIdentifier", ["BuildingSync::PremisesIdentifiers::PremisesIdentifier[]", XSD::QName.new(NsC_2019, "PremisesIdentifier")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PremisesIdentifiers::PremisesIdentifier,
    :schema_name => XSD::QName.new(NsC_2019, "PremisesIdentifier"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["identifierLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "IdentifierLabel")], [0, 1]],
      ["identifierCustomName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "IdentifierCustomName")], [0, 1]],
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "IdentifierValue")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OccupancyClassificationType,
    :schema_name => XSD::QName.new(NsC_2019, "OccupancyClassification")
  )

  Registry.register(
    :class => BuildingSync::OccupancyClassificationType,
    :schema_name => XSD::QName.new(NsC_2019, "OriginalOccupancyClassification")
  )

  Registry.register(
    :class => BuildingSync::TypicalOccupantUsages,
    :schema_name => XSD::QName.new(NsC_2019, "TypicalOccupantUsages"),
    :schema_element => [
      ["typicalOccupantUsage", ["BuildingSync::TypicalOccupantUsages::TypicalOccupantUsage[]", XSD::QName.new(NsC_2019, "TypicalOccupantUsage")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TypicalOccupantUsages::TypicalOccupantUsage,
    :schema_name => XSD::QName.new(NsC_2019, "TypicalOccupantUsage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["typicalOccupantUsageValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_2019, "TypicalOccupantUsageValue")]],
      ["typicalOccupantUsageUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TypicalOccupantUsageUnits")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UserDefinedFields,
    :schema_name => XSD::QName.new(NsC_2019, "UserDefinedFields"),
    :schema_element => [
      ["userDefinedField", ["BuildingSync::UserDefinedFields::UserDefinedField[]", XSD::QName.new(NsC_2019, "UserDefinedField")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::UserDefinedFields::UserDefinedField,
    :schema_name => XSD::QName.new(NsC_2019, "UserDefinedField"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FieldName")], [0, 1]],
      ["fieldValue", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FieldValue")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PrimaryContactID,
    :schema_name => XSD::QName.new(NsC_2019, "PrimaryContactID"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TenantIDs,
    :schema_name => XSD::QName.new(NsC_2019, "TenantIDs"),
    :schema_element => [
      ["tenantID", ["BuildingSync::TenantIDs::TenantID", XSD::QName.new(NsC_2019, "TenantID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::TenantIDs::TenantID,
    :schema_name => XSD::QName.new(NsC_2019, "TenantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FloorAreas,
    :schema_name => XSD::QName.new(NsC_2019, "FloorAreas"),
    :schema_element => [
      ["floorArea", ["BuildingSync::FloorAreas::FloorArea[]", XSD::QName.new(NsC_2019, "FloorArea")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FloorAreas::FloorArea::FloorAreaValue,
    :schema_name => XSD::QName.new(NsC_2019, "FloorAreaValue"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FloorAreas::FloorArea::ExcludedSectionIDs::ExcludedSectionID,
    :schema_name => XSD::QName.new(NsC_2019, "ExcludedSectionID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FloorAreas::FloorArea::ExcludedSectionIDs,
    :schema_name => XSD::QName.new(NsC_2019, "ExcludedSectionIDs"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["excludedSectionID", ["BuildingSync::FloorAreas::FloorArea::ExcludedSectionIDs::ExcludedSectionID[]", XSD::QName.new(NsC_2019, "ExcludedSectionID")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FloorAreas::FloorArea,
    :schema_name => XSD::QName.new(NsC_2019, "FloorArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["floorAreaType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FloorAreaType")], [0, 1]],
      ["floorAreaCustomName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "FloorAreaCustomName")], [0, 1]],
      ["floorAreaValue", ["BuildingSync::FloorAreas::FloorArea::FloorAreaValue", XSD::QName.new(NsC_2019, "FloorAreaValue")], [0, 1]],
      ["floorAreaPercentage", ["SOAP::SOAPFloat", XSD::QName.new(NsC_2019, "FloorAreaPercentage")], [0, 1]],
      ["story", ["SOAP::SOAPInt", XSD::QName.new(NsC_2019, "Story")], [0, 1]],
      ["excludedSectionIDs", ["BuildingSync::FloorAreas::FloorArea::ExcludedSectionIDs", XSD::QName.new(NsC_2019, "ExcludedSectionIDs")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OccupancyLevels,
    :schema_name => XSD::QName.new(NsC_2019, "OccupancyLevels"),
    :schema_element => [
      ["occupancyLevel", ["BuildingSync::OccupancyLevels::OccupancyLevel[]", XSD::QName.new(NsC_2019, "OccupancyLevel")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OccupancyLevels::OccupancyLevel::OccupantQuantity,
    :schema_name => XSD::QName.new(NsC_2019, "OccupantQuantity"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OccupancyLevels::OccupancyLevel,
    :schema_name => XSD::QName.new(NsC_2019, "OccupancyLevel"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["occupantType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OccupantType")], [0, 1]],
      ["occupantQuantityType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OccupantQuantityType")], [0, 1]],
      ["occupantQuantity", ["BuildingSync::OccupancyLevels::OccupancyLevel::OccupantQuantity", XSD::QName.new(NsC_2019, "OccupantQuantity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FuelTypes,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyResource")
  )

  Registry.register(
    :class => BuildingSync::ResourceUnits,
    :schema_name => XSD::QName.new(NsC_2019, "ResourceUnits")
  )

  Registry.register(
    :class => BuildingSync::DutyCycle,
    :schema_name => XSD::QName.new(NsC_2019, "DutyCycle"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SystemPerformanceRatio,
    :schema_name => XSD::QName.new(NsC_2019, "SystemPerformanceRatio"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EnergyUseByFuelTypes,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyUseByFuelTypes"),
    :schema_element => [
      ["energyUseByFuelType", ["BuildingSync::EnergyUseByFuelTypes::EnergyUseByFuelType", XSD::QName.new(NsC_2019, "EnergyUseByFuelType")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::EnergyUseByFuelTypes::EnergyUseByFuelType,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyUseByFuelType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["primaryFuel", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "PrimaryFuel")]],
      ["energyUse", ["BuildingSync::EnergyUse", XSD::QName.new(NsC_2019, "EnergyUse")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScoreData,
    :schema_name => XSD::QName.new(NsC_2019, "AssetScoreData"),
    :schema_element => [
      ["score", ["BuildingSync::AssetScoreData::Score", XSD::QName.new(NsC_2019, "Score")]],
      ["siteEnergyUse", ["BuildingSync::AssetScoreData::SiteEnergyUse", XSD::QName.new(NsC_2019, "SiteEnergyUse")], [0, 1]],
      ["sourceEnergyUse", ["BuildingSync::AssetScoreData::SourceEnergyUse", XSD::QName.new(NsC_2019, "SourceEnergyUse")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScoreData::Score,
    :schema_name => XSD::QName.new(NsC_2019, "Score"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AssetScoreData::SiteEnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "SiteEnergyUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyUseByFuelTypes", ["BuildingSync::EnergyUseByFuelTypes[]", XSD::QName.new(NsC_2019, "EnergyUseByFuelTypes")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScoreData::SourceEnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "SourceEnergyUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyUseByFuelTypes", ["BuildingSync::EnergyUseByFuelTypes[]", XSD::QName.new(NsC_2019, "EnergyUseByFuelTypes")], [1, nil]],
      ["sourceEnergyUseIntensity", ["BuildingSync::SourceEnergyUseIntensity", XSD::QName.new(NsC_2019, "SourceEnergyUseIntensity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore,
    :schema_name => XSD::QName.new(NsC_2019, "AssetScore"),
    :schema_element => [
      ["wholeBuilding", ["BuildingSync::AssetScore::WholeBuilding", XSD::QName.new(NsC_2019, "WholeBuilding")], [0, 1]],
      ["useTypes", ["BuildingSync::AssetScore::UseTypes", XSD::QName.new(NsC_2019, "UseTypes")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding::EnergyUseByEndUses::EnergyUseByEndUse,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyUseByEndUse"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyUse", ["BuildingSync::EnergyUse", XSD::QName.new(NsC_2019, "EnergyUse")]],
      ["endUse", ["BuildingSync::EndUseType", XSD::QName.new(NsC_2019, "EndUse")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding::EnergyUseByEndUses,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyUseByEndUses"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyUseByEndUse", ["BuildingSync::AssetScore::WholeBuilding::EnergyUseByEndUses::EnergyUseByEndUse[]", XSD::QName.new(NsC_2019, "EnergyUseByEndUse")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding::Rankings::Ranking::Type,
    :schema_name => XSD::QName.new(NsC_2019, "Type"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["systemsType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "SystemsType")]],
      ["envelopeType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EnvelopeType")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding::Rankings::Ranking,
    :schema_name => XSD::QName.new(NsC_2019, "Ranking"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["type", ["BuildingSync::AssetScore::WholeBuilding::Rankings::Ranking::Type", XSD::QName.new(NsC_2019, "Type")]],
      ["rank", ["BuildingSync::RankType", XSD::QName.new(NsC_2019, "Rank")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding::Rankings,
    :schema_name => XSD::QName.new(NsC_2019, "Rankings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["ranking", ["BuildingSync::AssetScore::WholeBuilding::Rankings::Ranking[]", XSD::QName.new(NsC_2019, "Ranking")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::WholeBuilding,
    :schema_name => XSD::QName.new(NsC_2019, "WholeBuilding"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["assetScoreData", ["BuildingSync::AssetScoreData", XSD::QName.new(NsC_2019, "AssetScoreData")]],
      ["energyUseByEndUses", ["BuildingSync::AssetScore::WholeBuilding::EnergyUseByEndUses", XSD::QName.new(NsC_2019, "EnergyUseByEndUses")], [0, 1]],
      ["rankings", ["BuildingSync::AssetScore::WholeBuilding::Rankings", XSD::QName.new(NsC_2019, "Rankings")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::UseTypes::UseType,
    :schema_name => XSD::QName.new(NsC_2019, "UseType"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["assetScoreData", ["BuildingSync::AssetScoreData", XSD::QName.new(NsC_2019, "AssetScoreData")]],
      ["assetScoreUseType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AssetScoreUseType")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AssetScore::UseTypes,
    :schema_name => XSD::QName.new(NsC_2019, "UseTypes"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["useType", ["BuildingSync::AssetScore::UseTypes::UseType[]", XSD::QName.new(NsC_2019, "UseType")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ENERGYSTARScore,
    :schema_name => XSD::QName.new(NsC_2019, "ENERGYSTARScore"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ReferenceCase,
    :schema_name => XSD::QName.new(NsC_2019, "ReferenceCase"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WeatherDataSource,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherDataSource")
  )

  Registry.register(
    :class => BuildingSync::CostEffectivenessScreeningMethod,
    :schema_name => XSD::QName.new(NsC_2019, "CostEffectivenessScreeningMethod")
  )

  Registry.register(
    :class => BuildingSync::AnnualHeatingEfficiencyUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyUnits")
  )

  Registry.register(
    :class => BuildingSync::BurnerType,
    :schema_name => XSD::QName.new(NsC_2019, "BurnerType")
  )

  Registry.register(
    :class => BuildingSync::BurnerControlType,
    :schema_name => XSD::QName.new(NsC_2019, "BurnerControlType")
  )

  Registry.register(
    :class => BuildingSync::IgnitionType,
    :schema_name => XSD::QName.new(NsC_2019, "IgnitionType")
  )

  Registry.register(
    :class => BuildingSync::DraftType,
    :schema_name => XSD::QName.new(NsC_2019, "DraftType")
  )

  Registry.register(
    :class => BuildingSync::CondensingOperation,
    :schema_name => XSD::QName.new(NsC_2019, "CondensingOperation")
  )

  Registry.register(
    :class => BuildingSync::HeatingStaging,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingStaging")
  )

  Registry.register(
    :class => BuildingSync::Priority,
    :schema_name => XSD::QName.new(NsC_2019, "Priority")
  )

  Registry.register(
    :class => BuildingSync::CompressorStaging,
    :schema_name => XSD::QName.new(NsC_2019, "CompressorStaging")
  )

  Registry.register(
    :class => BuildingSync::AnnualCoolingEfficiencyUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyUnits")
  )

  Registry.register(
    :class => BuildingSync::WaterCooledCondenserFlowControl,
    :schema_name => XSD::QName.new(NsC_2019, "WaterCooledCondenserFlowControl")
  )

  Registry.register(
    :class => BuildingSync::WaterSideEconomizerType,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizerType")
  )

  Registry.register(
    :class => BuildingSync::VentilationControlMethod,
    :schema_name => XSD::QName.new(NsC_2019, "VentilationControlMethod")
  )

  Registry.register(
    :class => BuildingSync::FluorescentStartType,
    :schema_name => XSD::QName.new(NsC_2019, "FluorescentStartType")
  )

  Registry.register(
    :class => BuildingSync::ClothesWasherClassification,
    :schema_name => XSD::QName.new(NsC_2019, "ClothesWasherClassification")
  )

  Registry.register(
    :class => BuildingSync::ClothesWasherLoaderType,
    :schema_name => XSD::QName.new(NsC_2019, "ClothesWasherLoaderType")
  )

  Registry.register(
    :class => BuildingSync::DryerType,
    :schema_name => XSD::QName.new(NsC_2019, "DryerType")
  )

  Registry.register(
    :class => BuildingSync::FoundationWallInsulationContinuity,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallInsulationContinuity")
  )

  Registry.register(
    :class => BuildingSync::SlabInsulationOrientation,
    :schema_name => XSD::QName.new(NsC_2019, "SlabInsulationOrientation")
  )

  Registry.register(
    :class => BuildingSync::SlabHeating,
    :schema_name => XSD::QName.new(NsC_2019, "SlabHeating")
  )

  Registry.register(
    :class => BuildingSync::ResourceBoundary,
    :schema_name => XSD::QName.new(NsC_2019, "ResourceBoundary")
  )

  Registry.register(
    :class => BuildingSync::WaterResource,
    :schema_name => XSD::QName.new(NsC_2019, "WaterResource")
  )

  Registry.register(
    :class => BuildingSync::TemporalStatus,
    :schema_name => XSD::QName.new(NsC_2019, "TemporalStatus")
  )

  Registry.register(
    :class => BuildingSync::ControlSystemType,
    :schema_name => XSD::QName.new(NsC_2019, "ControlSystemType"),
    :schema_element => [ :choice,
      ["analog", ["BuildingSync::ControlSystemType::Analog", XSD::QName.new(NsC_2019, "Analog")]],
      ["digital", ["BuildingSync::ControlSystemType::Digital", XSD::QName.new(NsC_2019, "Digital")]],
      ["pneumatic", ["BuildingSync::ControlSystemType::Pneumatic", XSD::QName.new(NsC_2019, "Pneumatic")]],
      ["other", ["BuildingSync::ControlSystemType::Other", XSD::QName.new(NsC_2019, "Other")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlSystemType::Analog,
    :schema_name => XSD::QName.new(NsC_2019, "Analog"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["communicationProtocol", ["BuildingSync::CommunicationProtocolAnalogType", XSD::QName.new(NsC_2019, "CommunicationProtocol")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlSystemType::Digital,
    :schema_name => XSD::QName.new(NsC_2019, "Digital"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["communicationProtocol", ["BuildingSync::CommunicationProtocolDigitalType", XSD::QName.new(NsC_2019, "CommunicationProtocol")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ControlSystemType::Pneumatic,
    :schema_name => XSD::QName.new(NsC_2019, "Pneumatic"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::ControlSystemType::Other,
    :schema_name => XSD::QName.new(NsC_2019, "Other"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["otherCommunicationProtocolName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherCommunicationProtocolName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DraftBoundary,
    :schema_name => XSD::QName.new(NsC_2019, "DraftBoundary")
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType,
    :schema_name => XSD::QName.new(NsC_2019, "ClimateZoneType"),
    :schema_element => [
      ["aSHRAE", ["BuildingSync::ClimateZoneType::ASHRAE", XSD::QName.new(NsC_2019, "ASHRAE")], [0, 1]],
      ["energyStar", ["BuildingSync::ClimateZoneType::EnergyStar", XSD::QName.new(NsC_2019, "EnergyStar")], [0, 1]],
      ["californiaTitle24", ["BuildingSync::ClimateZoneType::CaliforniaTitle24", XSD::QName.new(NsC_2019, "CaliforniaTitle24")], [0, 1]],
      ["iECC", ["BuildingSync::ClimateZoneType::IECC", XSD::QName.new(NsC_2019, "IECC")], [0, 1]],
      ["buildingAmerica", ["BuildingSync::ClimateZoneType::BuildingAmerica", XSD::QName.new(NsC_2019, "BuildingAmerica")], [0, 1]],
      ["cBECS", ["BuildingSync::CBECSType", XSD::QName.new(NsC_2019, "CBECS")], [0, 1]],
      ["dOE", ["BuildingSync::ClimateZoneType::DOE", XSD::QName.new(NsC_2019, "DOE")], [0, 1]],
      ["other", ["BuildingSync::ClimateZoneType::Other", XSD::QName.new(NsC_2019, "Other")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::ASHRAE,
    :schema_name => XSD::QName.new(NsC_2019, "ASHRAE"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::EnergyStar,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyStar"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::CaliforniaTitle24,
    :schema_name => XSD::QName.new(NsC_2019, "CaliforniaTitle24"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::IECC,
    :schema_name => XSD::QName.new(NsC_2019, "IECC"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::BuildingAmerica,
    :schema_name => XSD::QName.new(NsC_2019, "BuildingAmerica"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::DOE,
    :schema_name => XSD::QName.new(NsC_2019, "DOE"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClimateZoneType::Other,
    :schema_name => XSD::QName.new(NsC_2019, "Other"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["climateZone", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ClimateZone")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::EGRIDRegionCode,
    :schema_name => XSD::QName.new(NsC_2019, "eGRIDRegionCode")
  )

  Registry.register(
    :class => BuildingSync::EGRIDSubregionCodes,
    :schema_name => XSD::QName.new(NsC_2019, "eGRIDSubregionCodes"),
    :schema_element => [
      ["eGRIDSubregionCode", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WeatherDataStationID,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherDataStationID")
  )

  Registry.register(
    :class => BuildingSync::WeatherStationName,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStationName")
  )

  Registry.register(
    :class => BuildingSync::WeatherStationCategory,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStationCategory")
  )

  Registry.register(
    :class => BuildingSync::Longitude,
    :schema_name => XSD::QName.new(NsC_2019, "Longitude"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Latitude,
    :schema_name => XSD::QName.new(NsC_2019, "Latitude"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WallID,
    :schema_name => XSD::QName.new(NsC_2019, "WallID"),
    :schema_element => [
      ["wallArea", ["BuildingSync::WallID::WallArea", XSD::QName.new(NsC_2019, "WallArea")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WallID::WallArea,
    :schema_name => XSD::QName.new(NsC_2019, "WallArea"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DoorID,
    :schema_name => XSD::QName.new(NsC_2019, "DoorID"),
    :schema_element => [
      ["fenestrationArea", ["BuildingSync::FenestrationArea", XSD::QName.new(NsC_2019, "FenestrationArea")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WindowID,
    :schema_name => XSD::QName.new(NsC_2019, "WindowID"),
    :schema_element => [
      ["fenestrationArea", ["BuildingSync::FenestrationArea", XSD::QName.new(NsC_2019, "FenestrationArea")], [0, 1]],
      ["windowToWallRatio", ["BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute", XSD::QName.new(NsC_2019, "WindowToWallRatio")], [0, 1]],
      ["percentOfWindowAreaShaded", ["BuildingSync::WindowID::PercentOfWindowAreaShaded", XSD::QName.new(NsC_2019, "PercentOfWindowAreaShaded")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WindowID::PercentOfWindowAreaShaded,
    :schema_name => XSD::QName.new(NsC_2019, "PercentOfWindowAreaShaded"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WeatherStations,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStations"),
    :schema_element => [
      ["weatherStation", ["BuildingSync::WeatherStations::WeatherStation[]", XSD::QName.new(NsC_2019, "WeatherStation")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::WeatherStations::WeatherStation,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStation"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["weatherDataStationID", ["BuildingSync::WeatherDataStationID", XSD::QName.new(NsC_2019, "WeatherDataStationID")], [0, 1]],
      ["weatherStationName", ["BuildingSync::WeatherStationName", XSD::QName.new(NsC_2019, "WeatherStationName")], [0, 1]],
      ["weatherStationCategory", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "WeatherStationCategory")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualCoolingEfficiencyValue,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualCoolingEfficiencyValue"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualDemandSavingsCost,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualDemandSavingsCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualHeatingEfficiencyValue,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualHeatingEfficiencyValue"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualPeakElectricityReduction,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualPeakElectricityReduction"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsByFuels,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsByFuels"),
    :schema_element => [
      ["annualSavingsByFuel", ["BuildingSync::AnnualSavingsByFuels::AnnualSavingsByFuel[]", XSD::QName.new(NsC_2019, "AnnualSavingsByFuel")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsByFuels::AnnualSavingsByFuel::AnnualSavingsNativeUnits,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsNativeUnits"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsByFuels::AnnualSavingsByFuel,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsByFuel"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["energyResource", ["BuildingSync::FuelTypes", XSD::QName.new(NsC_2019, "EnergyResource")], [0, 1]],
      ["resourceUnits", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ResourceUnits")], [0, 1]],
      ["annualSavingsNativeUnits", ["BuildingSync::AnnualSavingsByFuels::AnnualSavingsByFuel::AnnualSavingsNativeUnits", XSD::QName.new(NsC_2019, "AnnualSavingsNativeUnits")], [0, 1]],
      ["annualSavingsAverageGHGEmissions", ["BuildingSync::AnnualSavingsAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions")], [0, 1]],
      ["annualSavingsMarginalGHGEmissions", ["BuildingSync::AnnualSavingsMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions")], [0, 1]],
      ["annualSavingsGHGEmissionIntensity", ["BuildingSync::AnnualSavingsGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsCost,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsSiteEnergy,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsSiteEnergy"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsSourceEnergy,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsSourceEnergy"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualWaterCostSavings,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualWaterCostSavings"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualWaterSavings,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualWaterSavings"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsAverageGHGEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsMarginalGHGEmissions,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::AnnualSavingsGHGEmissionIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LifeCycleSavingsEnergy,
    :schema_name => XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergy"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LifeCycleSavingsEnergyCost,
    :schema_name => XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergyCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LifeCycleSavingsWater,
    :schema_name => XSD::QName.new(NsC_2019, "LifeCycleSavingsWater"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LifeCycleSavingsWaterCost,
    :schema_name => XSD::QName.new(NsC_2019, "LifeCycleSavingsWaterCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LifeCycleSavingsAncillaryCost,
    :schema_name => XSD::QName.new(NsC_2019, "LifeCycleSavingsAncillaryCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BoilerLWT,
    :schema_name => XSD::QName.new(NsC_2019, "BoilerLWT"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BurnerQuantity,
    :schema_name => XSD::QName.new(NsC_2019, "BurnerQuantity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BurnerTurndownRatio,
    :schema_name => XSD::QName.new(NsC_2019, "BurnerTurndownRatio"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CDDBaseTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "CDDBaseTemperature"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ChilledWaterSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "ChilledWaterSupplyTemperature"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ClothesWasherCapacity,
    :schema_name => XSD::QName.new(NsC_2019, "ClothesWasherCapacity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ClothesWasherModifiedEnergyFactor,
    :schema_name => XSD::QName.new(NsC_2019, "ClothesWasherModifiedEnergyFactor"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ClothesWasherWaterFactor,
    :schema_name => XSD::QName.new(NsC_2019, "ClothesWasherWaterFactor"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Combustion,
    :schema_name => XSD::QName.new(NsC_2019, "Combustion"),
    :schema_element => [
      ["draftType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftType")], [0, 1]],
      ["draftBoundary", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "DraftBoundary")], [0, 1]],
      ["condensingOperation", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CondensingOperation")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CombustionEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "CombustionEfficiency"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantIDs,
    :schema_name => XSD::QName.new(NsC_2019, "CondenserPlantIDs"),
    :schema_element => [
      ["condenserPlantID", ["BuildingSync::CondenserPlantIDs::CondenserPlantID[]", XSD::QName.new(NsC_2019, "CondenserPlantID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CondenserPlantIDs::CondenserPlantID,
    :schema_name => XSD::QName.new(NsC_2019, "CondenserPlantID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::CondenserWaterTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "CondenserWaterTemperature"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CondensingTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "CondensingTemperature"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CoolingSourceID,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSourceID"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::CoolingStageCapacity,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingStageCapacity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DemandRatchetPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "DemandRatchetPercentage"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DemandRateAdjustment,
    :schema_name => XSD::QName.new(NsC_2019, "DemandRateAdjustment"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DemandWindow,
    :schema_name => XSD::QName.new(NsC_2019, "DemandWindow"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DryerElectricEnergyUsePerLoad,
    :schema_name => XSD::QName.new(NsC_2019, "DryerElectricEnergyUsePerLoad"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DryerGasEnergyUsePerLoad,
    :schema_name => XSD::QName.new(NsC_2019, "DryerGasEnergyUsePerLoad"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ElectricDemandRate,
    :schema_name => XSD::QName.new(NsC_2019, "ElectricDemandRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ElectricResistanceType,
    :schema_name => XSD::QName.new(NsC_2019, "ElectricResistance"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::EndUseType,
    :schema_name => XSD::QName.new(NsC_2019, "EndUse")
  )

  Registry.register(
    :class => BuildingSync::EnergyCostRate,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyCostRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EnergyRateAdjustment,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyRateAdjustment"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EnergySellRate,
    :schema_name => XSD::QName.new(NsC_2019, "EnergySellRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EnergyUse,
    :schema_name => XSD::QName.new(NsC_2019, "EnergyUse"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EquipmentDisposalAndSalvageCosts,
    :schema_name => XSD::QName.new(NsC_2019, "EquipmentDisposalAndSalvageCosts"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ExistingScheduleAffected,
    :schema_name => XSD::QName.new(NsC_2019, "ExistingScheduleAffected"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ExteriorRoughnessType,
    :schema_name => XSD::QName.new(NsC_2019, "ExteriorRoughness")
  )

  Registry.register(
    :class => BuildingSync::FanBasedType,
    :schema_name => XSD::QName.new(NsC_2019, "FanBased"),
    :schema_element => [
      ["fanBasedDistributionType", ["BuildingSync::FanBasedDistributionTypeType", XSD::QName.new(NsC_2019, "FanBasedDistributionType")], [0, 1]],
      ["airSideEconomizer", ["BuildingSync::FanBasedType::AirSideEconomizer", XSD::QName.new(NsC_2019, "AirSideEconomizer")], [0, 1]],
      ["heatingSupplyAirTemperatureControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperatureControl")], [0, 1]],
      ["coolingSupplyAirTemperature", ["BuildingSync::FanBasedType::CoolingSupplyAirTemperature", XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperature")], [0, 1]],
      ["coolingSupplyAirTemperatureControlType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperatureControlType")], [0, 1]],
      ["outsideAirResetMaximumHeatingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMaximumHeatingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMaximumHeatingSupplyTemperature")], [0, 1]],
      ["outsideAirResetMinimumHeatingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMinimumHeatingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMinimumHeatingSupplyTemperature")], [0, 1]],
      ["outsideAirTemperatureUpperLimitHeatingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitHeatingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitHeatingResetControl")], [0, 1]],
      ["outsideAirTemperatureLowerLimitHeatingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitHeatingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitHeatingResetControl")], [0, 1]],
      ["outsideAirResetMaximumCoolingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMaximumCoolingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMaximumCoolingSupplyTemperature")], [0, 1]],
      ["outsideAirResetMinimumCoolingSupplyTemperature", ["BuildingSync::FanBasedType::OutsideAirResetMinimumCoolingSupplyTemperature", XSD::QName.new(NsC_2019, "OutsideAirResetMinimumCoolingSupplyTemperature")], [0, 1]],
      ["outsideAirTemperatureUpperLimitCoolingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitCoolingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitCoolingResetControl")], [0, 1]],
      ["outsideAirTemperatureLowerLimitCoolingResetControl", ["BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitCoolingResetControl", XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitCoolingResetControl")], [0, 1]],
      ["heatingSupplyAirTemperature", ["BuildingSync::FanBasedType::HeatingSupplyAirTemperature", XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperature")], [0, 1]],
      ["supplyAirTemperatureResetControl", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "SupplyAirTemperatureResetControl")], [0, 1]],
      ["staticPressureResetControl", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_2019, "StaticPressureResetControl")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerDryBulbControlPoint,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerDryBulbControlPoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerEnthalpyControlPoint,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerEnthalpyControlPoint"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer::EconomizerLowTemperatureLockout,
    :schema_name => XSD::QName.new(NsC_2019, "EconomizerLowTemperatureLockout"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::AirSideEconomizer,
    :schema_name => XSD::QName.new(NsC_2019, "AirSideEconomizer"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["airSideEconomizerType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "AirSideEconomizerType")], [0, 1]],
      ["economizerControl", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EconomizerControl")], [0, 1]],
      ["economizerDryBulbControlPoint", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerDryBulbControlPoint", XSD::QName.new(NsC_2019, "EconomizerDryBulbControlPoint")], [0, 1]],
      ["economizerEnthalpyControlPoint", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerEnthalpyControlPoint", XSD::QName.new(NsC_2019, "EconomizerEnthalpyControlPoint")], [0, 1]],
      ["economizerLowTemperatureLockout", ["BuildingSync::FanBasedType::AirSideEconomizer::EconomizerLowTemperatureLockout", XSD::QName.new(NsC_2019, "EconomizerLowTemperatureLockout")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID",
      XSD::QName.new(NsC_2019, "Status") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::CoolingSupplyAirTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingSupplyAirTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMaximumHeatingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMaximumHeatingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMinimumHeatingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMinimumHeatingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitHeatingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitHeatingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitHeatingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitHeatingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMaximumCoolingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMaximumCoolingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirResetMinimumCoolingSupplyTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirResetMinimumCoolingSupplyTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureUpperLimitCoolingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureUpperLimitCoolingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::OutsideAirTemperatureLowerLimitCoolingResetControl,
    :schema_name => XSD::QName.new(NsC_2019, "OutsideAirTemperatureLowerLimitCoolingResetControl"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FanBasedType::HeatingSupplyAirTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingSupplyAirTemperature"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FenestrationArea,
    :schema_name => XSD::QName.new(NsC_2019, "FenestrationArea"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FloorsAboveGrade,
    :schema_name => XSD::QName.new(NsC_2019, "FloorsAboveGrade"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FloorsBelowGrade,
    :schema_name => XSD::QName.new(NsC_2019, "FloorsBelowGrade"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationHeightAboveGrade,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationHeightAboveGrade"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::EnvelopeConstructionType,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallConstruction")
  )

  Registry.register(
    :class => BuildingSync::InsulationCondition,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallInsulationCondition")
  )

  Registry.register(
    :class => BuildingSync::FoundationWallInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallInsulationThickness"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationWallRValue,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallRValue"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FoundationWallUFactor,
    :schema_name => XSD::QName.new(NsC_2019, "FoundationWallUFactor"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FundingFromIncentives,
    :schema_name => XSD::QName.new(NsC_2019, "FundingFromIncentives"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FundingFromTaxCredits,
    :schema_name => XSD::QName.new(NsC_2019, "FundingFromTaxCredits"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HDDBaseTemperature,
    :schema_name => XSD::QName.new(NsC_2019, "HDDBaseTemperature"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingStageCapacityFraction"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HotWaterBoilerMaximumFlowRate,
    :schema_name => XSD::QName.new(NsC_2019, "HotWaterBoilerMaximumFlowRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::InputCapacity,
    :schema_name => XSD::QName.new(NsC_2019, "InputCapacity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::InteriorVisibleAbsorptance,
    :schema_name => XSD::QName.new(NsC_2019, "InteriorVisibleAbsorptance"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::InternalRateOfReturn,
    :schema_name => XSD::QName.new(NsC_2019, "InternalRateOfReturn"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::IntervalFrequencyType,
    :schema_name => XSD::QName.new(NsC_2019, "IntervalFrequency")
  )

  Registry.register(
    :class => BuildingSync::LampPower,
    :schema_name => XSD::QName.new(NsC_2019, "LampPower"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedBuildingID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedBuildingID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedFacilityID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedFacilityID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedScheduleIDs,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedScheduleIDs"),
    :schema_element => [
      ["linkedScheduleID", ["BuildingSync::LinkedScheduleIDs::LinkedScheduleID[]", XSD::QName.new(NsC_2019, "LinkedScheduleID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedScheduleIDs::LinkedScheduleID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedScheduleID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedSectionID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedSectionID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedSiteID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedSiteID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedSpaceID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedSpaceID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedSystemID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedSystemID"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedSystemIDs,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedSystemIDs"),
    :schema_element => [
      ["linkedSystemID", ["BuildingSync::LinkedSystemID[]", XSD::QName.new(NsC_2019, "LinkedSystemID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LinkedThermalZoneID,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedThermalZoneID"),
    :schema_element => [
      ["linkedScheduleIDs", ["BuildingSync::LinkedScheduleIDs", XSD::QName.new(NsC_2019, "LinkedScheduleIDs")], [0, 1]],
      ["floorAreas", ["BuildingSync::FloorAreas", XSD::QName.new(NsC_2019, "FloorAreas")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedAuditCycle,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedAuditCycle"),
    :schema_element => [
      ["indexYearOfAuditCycle", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_2019, "IndexYearOfAuditCycle")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LinkedAuditCycles,
    :schema_name => XSD::QName.new(NsC_2019, "LinkedAuditCycles"),
    :schema_element => [
      ["linkedAuditCycle", ["BuildingSync::LinkedAuditCycle[]", XSD::QName.new(NsC_2019, "LinkedAuditCycle")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MVCost,
    :schema_name => XSD::QName.new(NsC_2019, "MVCost"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MakeupAirSourceID,
    :schema_name => XSD::QName.new(NsC_2019, "MakeupAirSourceID"),
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute,
    :schema_name => XSD::QName.new(NsC_2019, "MinimumPartLoadRatio"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ModifiedSchedule,
    :schema_name => XSD::QName.new(NsC_2019, "ModifiedSchedule"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::NPVofTaxImplications,
    :schema_name => XSD::QName.new(NsC_2019, "NPVofTaxImplications"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::NetPresentValue,
    :schema_name => XSD::QName.new(NsC_2019, "NetPresentValue"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::NoCoolingType,
    :schema_name => XSD::QName.new(NsC_2019, "NoCooling"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::NoHeatingType,
    :schema_name => XSD::QName.new(NsC_2019, "NoHeating"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::NumberOfDiscreteCoolingStages,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfDiscreteCoolingStages"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::NumberOfHeatingStages,
    :schema_name => XSD::QName.new(NsC_2019, "NumberOfHeatingStages"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OMCostAnnualSavings,
    :schema_name => XSD::QName.new(NsC_2019, "OMCostAnnualSavings"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Occupancy,
    :schema_name => XSD::QName.new(NsC_2019, "Occupancy"),
    :schema_element => [
      ["controlSystemType", ["BuildingSync::ControlSystemType", XSD::QName.new(NsC_2019, "ControlSystemType")], [0, 1]],
      ["controlSensor", ["BuildingSync::ControlSensorOccupancyType", XSD::QName.new(NsC_2019, "ControlSensor")], [0, 1]],
      ["controlStrategy", ["BuildingSync::ControlStrategyOccupancyType", XSD::QName.new(NsC_2019, "ControlStrategy")], [0, 1]],
      ["otherControlStrategyName", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "OtherControlStrategyName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OtherCombinationType,
    :schema_name => XSD::QName.new(NsC_2019, "OtherCombination"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::OutputCapacity,
    :schema_name => XSD::QName.new(NsC_2019, "OutputCapacity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PipeInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "PipeInsulationThickness"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PipeLocation,
    :schema_name => XSD::QName.new(NsC_2019, "PipeLocation"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::PortfolioManagerType,
    :schema_name => XSD::QName.new(NsC_2019, "PortfolioManager"),
    :schema_element => [
      ["pMBenchmarkDate", ["SOAP::SOAPDate", XSD::QName.new(NsC_2019, "PMBenchmarkDate")], [0, 1]],
      ["buildingProfileStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "BuildingProfileStatus")], [0, 1]],
      ["federalSustainabilityChecklistCompletionPercentage", ["BuildingSync::PortfolioManagerType::FederalSustainabilityChecklistCompletionPercentage", XSD::QName.new(NsC_2019, "FederalSustainabilityChecklistCompletionPercentage")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PortfolioManagerType::FederalSustainabilityChecklistCompletionPercentage,
    :schema_name => XSD::QName.new(NsC_2019, "FederalSustainabilityChecklistCompletionPercentage"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BoundedDecimalZeroToOneWithSourceAttribute,
    :schema_name => XSD::QName.new(NsC_2019, "RatedCoolingSensibleHeatRatio"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RefrigerantChargeFactor,
    :schema_name => XSD::QName.new(NsC_2019, "RefrigerantChargeFactor"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::RequiredVentilationRate,
    :schema_name => XSD::QName.new(NsC_2019, "RequiredVentilationRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SimplePayback,
    :schema_name => XSD::QName.new(NsC_2019, "SimplePayback"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SlabArea,
    :schema_name => XSD::QName.new(NsC_2019, "SlabArea"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SlabExposedPerimeter,
    :schema_name => XSD::QName.new(NsC_2019, "SlabExposedPerimeter"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::InsulationCondition,
    :schema_name => XSD::QName.new(NsC_2019, "SlabInsulationCondition")
  )

  Registry.register(
    :class => BuildingSync::SlabInsulationThickness,
    :schema_name => XSD::QName.new(NsC_2019, "SlabInsulationThickness"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SlabPerimeter,
    :schema_name => XSD::QName.new(NsC_2019, "SlabPerimeter"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SourceEnergyUseIntensity,
    :schema_name => XSD::QName.new(NsC_2019, "SourceEnergyUseIntensity"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceIDs,
    :schema_name => XSD::QName.new(NsC_2019, "SpaceIDs"),
    :schema_element => [
      ["spaceID", ["BuildingSync::SpaceIDs::SpaceID[]", XSD::QName.new(NsC_2019, "SpaceID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::SpaceIDs::SpaceID,
    :schema_name => XSD::QName.new(NsC_2019, "SpaceID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::SteamBoilerMaximumOperatingPressure,
    :schema_name => XSD::QName.new(NsC_2019, "SteamBoilerMaximumOperatingPressure"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SteamBoilerMinimumOperatingPressure,
    :schema_name => XSD::QName.new(NsC_2019, "SteamBoilerMinimumOperatingPressure"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SummerPeakElectricityReduction,
    :schema_name => XSD::QName.new(NsC_2019, "SummerPeakElectricityReduction"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalEfficiency,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalEfficiency"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneIDs,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalZoneIDs"),
    :schema_element => [
      ["thermalZoneID", ["BuildingSync::ThermalZoneIDs::ThermalZoneID[]", XSD::QName.new(NsC_2019, "ThermalZoneID")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ThermalZoneIDs::ThermalZoneID,
    :schema_name => XSD::QName.new(NsC_2019, "ThermalZoneID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType,
    :schema_name => XSD::QName.new(NsC_2019, "TimeSeries"),
    :schema_element => [
      ["readingType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "ReadingType")], [0, 1]],
      ["peakType", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "PeakType")], [0, 1]],
      ["timeSeriesReadingQuantity", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "TimeSeriesReadingQuantity")], [0, 1]],
      ["startTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "StartTimestamp")], [0, 1]],
      ["endTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_2019, "EndTimestamp")], [0, 1]],
      ["intervalDuration", ["SOAP::SOAPInteger", XSD::QName.new(NsC_2019, "IntervalDuration")], [0, 1]],
      ["intervalDurationUnits", ["BuildingSync::IntervalFrequencyType", XSD::QName.new(NsC_2019, "IntervalDurationUnits")], [0, 1]],
      ["intervalFrequency", ["BuildingSync::IntervalFrequencyType", XSD::QName.new(NsC_2019, "IntervalFrequency")], [0, 1]],
      ["intervalReading", ["BuildingSync::TimeSeriesType::IntervalReading", XSD::QName.new(NsC_2019, "IntervalReading")], [0, 1]],
      ["phase", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "Phase")], [0, 1]],
      ["energyFlowDirection", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "EnergyFlowDirection")], [0, 1]],
      ["heatingDegreeDays", ["BuildingSync::TimeSeriesType::HeatingDegreeDays", XSD::QName.new(NsC_2019, "HeatingDegreeDays")], [0, 1]],
      ["coolingDegreeDays", ["BuildingSync::TimeSeriesType::CoolingDegreeDays", XSD::QName.new(NsC_2019, "CoolingDegreeDays")], [0, 1]],
      ["hDDBaseTemperature", ["BuildingSync::HDDBaseTemperature", XSD::QName.new(NsC_2019, "HDDBaseTemperature")], [0, 1]],
      ["cDDBaseTemperature", ["BuildingSync::CDDBaseTemperature", XSD::QName.new(NsC_2019, "CDDBaseTemperature")], [0, 1]],
      ["resourceUseID", ["BuildingSync::TimeSeriesType::ResourceUseID", XSD::QName.new(NsC_2019, "ResourceUseID")], [0, 1]],
      ["weatherStationID", ["BuildingSync::TimeSeriesType::WeatherStationID", XSD::QName.new(NsC_2019, "WeatherStationID")], [0, 1]],
      ["userDefinedFields", ["BuildingSync::UserDefinedFields", XSD::QName.new(NsC_2019, "UserDefinedFields")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::IntervalReading,
    :schema_name => XSD::QName.new(NsC_2019, "IntervalReading"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::HeatingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "HeatingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::CoolingDegreeDays,
    :schema_name => XSD::QName.new(NsC_2019, "CoolingDegreeDays"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::ResourceUseID,
    :schema_name => XSD::QName.new(NsC_2019, "ResourceUseID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeSeriesType::WeatherStationID,
    :schema_name => XSD::QName.new(NsC_2019, "WeatherStationID"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "IDref") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::UnknownType,
    :schema_name => XSD::QName.new(NsC_2019, "Unknown"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::VentilationControlMethods,
    :schema_name => XSD::QName.new(NsC_2019, "VentilationControlMethods"),
    :schema_element => [
      ["ventilationControlMethod", ["SOAP::SOAPString[]", XSD::QName.new(NsC_2019, "VentilationControlMethod")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::VentilationRate,
    :schema_name => XSD::QName.new(NsC_2019, "VentilationRate"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterSideEconomizerDBTemperatureMaximum,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizerDBTemperatureMaximum"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterSideEconomizerTemperatureMaximum,
    :schema_name => XSD::QName.new(NsC_2019, "WaterSideEconomizerTemperatureMaximum"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WeightedAverageLoad,
    :schema_name => XSD::QName.new(NsC_2019, "WeightedAverageLoad"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WinterPeakElectricityReduction,
    :schema_name => XSD::QName.new(NsC_2019, "WinterPeakElectricityReduction"),
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpatialUnits,
    :schema_name => XSD::QName.new(NsC_2019, "SpatialUnits"),
    :schema_element => [
      ["spatialUnit", ["BuildingSync::SpatialUnitTypeType[]", XSD::QName.new(NsC_2019, "SpatialUnit")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureSavingsAnalysis,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureSavingsAnalysis"),
    :schema_element => [
      ["measureRank", ["BuildingSync::MeasureSavingsAnalysis::MeasureRank", XSD::QName.new(NsC_2019, "MeasureRank")], [0, 1]],
      ["referenceCase", ["BuildingSync::ReferenceCase", XSD::QName.new(NsC_2019, "ReferenceCase")], [0, 1]],
      ["calculationMethod", ["BuildingSync::CalculationMethodType", XSD::QName.new(NsC_2019, "CalculationMethod")], [0, 1]],
      ["annualSavingsSiteEnergy", ["BuildingSync::AnnualSavingsSiteEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSiteEnergy")], [0, 1]],
      ["annualSavingsSourceEnergy", ["BuildingSync::AnnualSavingsSourceEnergy", XSD::QName.new(NsC_2019, "AnnualSavingsSourceEnergy")], [0, 1]],
      ["annualSavingsCost", ["BuildingSync::AnnualSavingsCost", XSD::QName.new(NsC_2019, "AnnualSavingsCost")], [0, 1]],
      ["annualSavingsByFuels", ["BuildingSync::AnnualSavingsByFuels", XSD::QName.new(NsC_2019, "AnnualSavingsByFuels")], [0, 1]],
      ["summerPeakElectricityReduction", ["BuildingSync::SummerPeakElectricityReduction", XSD::QName.new(NsC_2019, "SummerPeakElectricityReduction")], [0, 1]],
      ["winterPeakElectricityReduction", ["BuildingSync::WinterPeakElectricityReduction", XSD::QName.new(NsC_2019, "WinterPeakElectricityReduction")], [0, 1]],
      ["annualPeakElectricityReduction", ["BuildingSync::AnnualPeakElectricityReduction", XSD::QName.new(NsC_2019, "AnnualPeakElectricityReduction")], [0, 1]],
      ["annualDemandSavingsCost", ["BuildingSync::AnnualDemandSavingsCost", XSD::QName.new(NsC_2019, "AnnualDemandSavingsCost")], [0, 1]],
      ["annualWaterSavings", ["BuildingSync::AnnualWaterSavings", XSD::QName.new(NsC_2019, "AnnualWaterSavings")], [0, 1]],
      ["annualWaterCostSavings", ["BuildingSync::AnnualWaterCostSavings", XSD::QName.new(NsC_2019, "AnnualWaterCostSavings")], [0, 1]],
      ["annualSavingsAverageGHGEmissions", ["BuildingSync::AnnualSavingsAverageGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsAverageGHGEmissions")], [0, 1]],
      ["annualSavingsMarginalGHGEmissions", ["BuildingSync::AnnualSavingsMarginalGHGEmissions", XSD::QName.new(NsC_2019, "AnnualSavingsMarginalGHGEmissions")], [0, 1]],
      ["annualSavingsGHGEmissionIntensity", ["BuildingSync::AnnualSavingsGHGEmissionIntensity", XSD::QName.new(NsC_2019, "AnnualSavingsGHGEmissionIntensity")], [0, 1]],
      ["lifeCycleSavingsEnergy", ["BuildingSync::LifeCycleSavingsEnergy", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergy")], [0, 1]],
      ["lifeCycleSavingsEnergyCost", ["BuildingSync::LifeCycleSavingsEnergyCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsEnergyCost")], [0, 1]],
      ["lifeCycleSavingsWater", ["BuildingSync::LifeCycleSavingsWater", XSD::QName.new(NsC_2019, "LifeCycleSavingsWater")], [0, 1]],
      ["lifeCycleSavingsWaterCost", ["BuildingSync::LifeCycleSavingsWaterCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsWaterCost")], [0, 1]],
      ["lifeCycleSavingsAncillaryCost", ["BuildingSync::LifeCycleSavingsAncillaryCost", XSD::QName.new(NsC_2019, "LifeCycleSavingsAncillaryCost")], [0, 1]],
      ["oMCostAnnualSavings", ["BuildingSync::OMCostAnnualSavings", XSD::QName.new(NsC_2019, "OMCostAnnualSavings")], [0, 1]],
      ["otherCostAnnualSavings", ["BuildingSync::MeasureSavingsAnalysis::OtherCostAnnualSavings", XSD::QName.new(NsC_2019, "OtherCostAnnualSavings")], [0, 1]],
      ["equipmentDisposalAndSalvageCosts", ["BuildingSync::EquipmentDisposalAndSalvageCosts", XSD::QName.new(NsC_2019, "EquipmentDisposalAndSalvageCosts")], [0, 1]],
      ["fundingFromIncentives", ["BuildingSync::FundingFromIncentives", XSD::QName.new(NsC_2019, "FundingFromIncentives")], [0, 1]],
      ["fundingFromTaxCredits", ["BuildingSync::FundingFromTaxCredits", XSD::QName.new(NsC_2019, "FundingFromTaxCredits")], [0, 1]],
      ["nPVofTaxImplications", ["BuildingSync::NPVofTaxImplications", XSD::QName.new(NsC_2019, "NPVofTaxImplications")], [0, 1]],
      ["costEffectivenessScreeningMethod", ["SOAP::SOAPString", XSD::QName.new(NsC_2019, "CostEffectivenessScreeningMethod")], [0, 1]],
      ["simplePayback", ["BuildingSync::SimplePayback", XSD::QName.new(NsC_2019, "SimplePayback")], [0, 1]],
      ["netPresentValue", ["BuildingSync::NetPresentValue", XSD::QName.new(NsC_2019, "NetPresentValue")], [0, 1]],
      ["internalRateOfReturn", ["BuildingSync::InternalRateOfReturn", XSD::QName.new(NsC_2019, "InternalRateOfReturn")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::MeasureSavingsAnalysis::MeasureRank,
    :schema_name => XSD::QName.new(NsC_2019, "MeasureRank"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MeasureSavingsAnalysis::OtherCostAnnualSavings,
    :schema_name => XSD::QName.new(NsC_2019, "OtherCostAnnualSavings"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_attribute => {
      XSD::QName.new(NsC_2019, "Source") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::GbXML,
    :schema_name => XSD::QName.new(NsSchema, "gbXML"),
    :schema_element => [ :choice,
      ["aecXML", "BuildingSync::AecXML[]", [0, 1]],
      ["campus", ["BuildingSync::Campus[]", XSD::QName.new(NsSchema, "Campus")]],
      ["lightingSystem", ["BuildingSync::LightingSystem[]", XSD::QName.new(NsSchema, "LightingSystem")], [0, nil]],
      ["lightingControl", ["BuildingSync::LightingControl[]", XSD::QName.new(NsSchema, "LightingControl")], [0, nil]],
      ["construction", ["BuildingSync::Construction[]", XSD::QName.new(NsSchema, "Construction")], [0, nil]],
      ["layer", ["BuildingSync::Layer[]", XSD::QName.new(NsSchema, "Layer")], [0, nil]],
      ["material", ["BuildingSync::Material[]", XSD::QName.new(NsSchema, "Material")], [0, nil]],
      ["windowType", ["BuildingSync::WindowType[]", XSD::QName.new(NsSchema, "WindowType")], [0, nil]],
      ["schedule", ["BuildingSync::Schedule[]", XSD::QName.new(NsSchema, "Schedule")], [0, nil]],
      ["weekSchedule", ["BuildingSync::WeekSchedule[]", XSD::QName.new(NsSchema, "WeekSchedule")], [0, nil]],
      ["daySchedule", ["BuildingSync::DaySchedule[]", XSD::QName.new(NsSchema, "DaySchedule")], [0, nil]],
      ["zone", ["BuildingSync::Zone[]", XSD::QName.new(NsSchema, "Zone")], [0, nil]],
      ["airLoop", ["BuildingSync::AirLoop[]", XSD::QName.new(NsSchema, "AirLoop")], [0, nil]],
      ["hydronicLoop", ["BuildingSync::HydronicLoop[]", XSD::QName.new(NsSchema, "HydronicLoop")], [0, nil]],
      ["intEquip", ["BuildingSync::IntEquip[]", XSD::QName.new(NsSchema, "IntEquip")], [0, nil]],
      ["extEquip", ["BuildingSync::ExtEquip[]", XSD::QName.new(NsSchema, "ExtEquip")], [0, nil]],
      ["weather", ["BuildingSync::Weather[]", XSD::QName.new(NsSchema, "Weather")], [0, nil]],
      ["meter", ["BuildingSync::Meter[]", XSD::QName.new(NsSchema, "Meter")], [0, nil]],
      ["results", ["BuildingSync::Results[]", XSD::QName.new(NsSchema, "Results")], [0, nil]],
      ["documentHistory", ["BuildingSync::DocumentHistory[]", XSD::QName.new(NsSchema, "DocumentHistory")], [0, 1]],
      ["simulationParameters", ["BuildingSync::SimulationParameters[]", XSD::QName.new(NsSchema, "SimulationParameters")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "engine") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "temperatureUnit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "lengthUnit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "areaUnit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "volumeUnit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "useSIUnitsForResults") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "version") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "SurfaceReferenceLocation") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Absorptance,
    :schema_name => XSD::QName.new(NsSchema, "Absorptance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::AdjacentSpaceId,
    :schema_name => XSD::QName.new(NsSchema, "AdjacentSpaceId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "spaceIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "surfaceType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Age,
    :schema_name => XSD::QName.new(NsSchema, "Age"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::AirLoop,
    :schema_name => XSD::QName.new(NsSchema, "AirLoop"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["airLoopEquipment", ["BuildingSync::AirLoopEquipment[]", XSD::QName.new(NsSchema, "AirLoopEquipment")], [0, nil]],
      ["temperatureControl", ["BuildingSync::TemperatureControl[]", XSD::QName.new(NsSchema, "TemperatureControl")], [0, 1]],
      ["pressureControl", ["BuildingSync::PressureControl[]", XSD::QName.new(NsSchema, "PressureControl")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "controlZoneIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "systemType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::AirLoopEquipment,
    :schema_name => XSD::QName.new(NsSchema, "AirLoopEquipment"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["model", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Model")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Manufacturer")], [0, 1]],
      ["ratedFlow", ["BuildingSync::RatedFlow[]", XSD::QName.new(NsSchema, "RatedFlow")], [0, 1]],
      ["minFlow", ["BuildingSync::MinFlow[]", XSD::QName.new(NsSchema, "MinFlow")], [0, 1]],
      ["maximumFlow", ["BuildingSync::MaximumFlow[]", XSD::QName.new(NsSchema, "MaximumFlow")], [0, 1]],
      ["maximumFlowFractionDuringReheat", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "MaximumFlowFractionDuringReheat")], [0, 1]],
      ["operationSchedule", ["BuildingSync::OperationSchedule[]", XSD::QName.new(NsSchema, "OperationSchedule")], [0, 1]],
      ["motorInAirstream", ["SOAP::SOAPBoolean[]", XSD::QName.new(NsSchema, "MotorInAirstream")], [0, 1]],
      ["temp", ["BuildingSync::Temp[]", XSD::QName.new(NsSchema, "Temp")], [0, nil]],
      ["enthalpy", ["BuildingSync::Enthalpy[]", XSD::QName.new(NsSchema, "Enthalpy")], [0, nil]],
      ["economizerLockout", ["BuildingSync::EconomizerLockout[]", XSD::QName.new(NsSchema, "EconomizerLockout")], [0, 1]],
      ["resetTemperature", ["BuildingSync::ResetTemperature[]", XSD::QName.new(NsSchema, "ResetTemperature")], [0, nil]],
      ["deltaP", ["BuildingSync::DeltaP[]", XSD::QName.new(NsSchema, "DeltaP")], [0, 1]],
      ["deltaT", ["BuildingSync::DeltaT[]", XSD::QName.new(NsSchema, "DeltaT")], [0, 1]],
      ["minRelativeHumidity", ["BuildingSync::MinRelativeHumidity[]", XSD::QName.new(NsSchema, "MinRelativeHumidity")], [0, 1]],
      ["maxRelativeHumidity", ["BuildingSync::MaxRelativeHumidity[]", XSD::QName.new(NsSchema, "MaxRelativeHumidity")], [0, 1]],
      ["power", ["BuildingSync::Power[]", XSD::QName.new(NsSchema, "Power")], [0, nil]],
      ["capacity", ["BuildingSync::Capacity_[]", XSD::QName.new(NsSchema, "Capacity")], [0, nil]],
      ["control", ["BuildingSync::Control[]", XSD::QName.new(NsSchema, "Control")], [0, nil]],
      ["efficiency", ["BuildingSync::Efficiency[]", XSD::QName.new(NsSchema, "Efficiency")], [0, nil]],
      ["airStreamFraction", ["BuildingSync::AirStreamFraction[]", XSD::QName.new(NsSchema, "AirStreamFraction")], [0, nil]],
      ["performance", ["BuildingSync::Performance[]", XSD::QName.new(NsSchema, "Performance")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["weight", ["BuildingSync::Weight[]", XSD::QName.new(NsSchema, "Weight")], [0, 1]],
      ["life", ["BuildingSync::Life[]", XSD::QName.new(NsSchema, "Life")], [0, 1]],
      ["waterLoss", ["BuildingSync::WaterLoss[]", XSD::QName.new(NsSchema, "WaterLoss")], [0, 1]],
      ["energy", ["BuildingSync::Energy[]", XSD::QName.new(NsSchema, "Energy")], [0, nil]],
      ["hydronicLoopId", ["BuildingSync::HydronicLoopId[]", XSD::QName.new(NsSchema, "HydronicLoopId")], [0, nil]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["refrigerantType", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "RefrigerantType")], [0, 1]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]],
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["flowType", ["BuildingSync::FlowType[]", XSD::QName.new(NsSchema, "FlowType")], [0, 1]],
      ["parallelFanOnFlowFraction", ["BuildingSync::ParallelFanOnFlowFraction[]", XSD::QName.new(NsSchema, "ParallelFanOnFlowFraction")], [0, 1]],
      ["nightCycleControl", ["BuildingSync::NightCycleControl[]", XSD::QName.new(NsSchema, "NightCycleControl")], [0, 1]],
      ["heatRecoveryType", ["BuildingSync::HeatRecoveryType[]", XSD::QName.new(NsSchema, "HeatRecoveryType")], [0, 1]],
      ["sensibleHeatRecoveryEffectiveness", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "SensibleHeatRecoveryEffectiveness")], [0, 1]],
      ["latentHeatRecoveryEffectiveness", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "LatentHeatRecoveryEffectiveness")], [0, 1]],
      ["coolingCoilSetpointResetType", ["BuildingSync::CoolingCoilSetpointResetType[]", XSD::QName.new(NsSchema, "CoolingCoilSetpointResetType")], [0, 1]],
      ["heatingCoilSetpointResetType", ["BuildingSync::HeatingCoilSetpointResetType[]", XSD::QName.new(NsSchema, "HeatingCoilSetpointResetType")], [0, 1]],
      ["damperHeatingAction", ["BuildingSync::DamperHeatingAction[]", XSD::QName.new(NsSchema, "DamperHeatingAction")], [0, 1]],
      ["heatPumpDefrostControl", ["BuildingSync::HeatPumpDefrostControl[]", XSD::QName.new(NsSchema, "HeatPumpDefrostControl")], [0, 1]],
      ["heatPumpDefrostStrategy", ["BuildingSync::HeatPumpDefrostStrategy[]", XSD::QName.new(NsSchema, "HeatPumpDefrostStrategy")], [0, 1]],
      ["supplementalHeatingCoilType", ["BuildingSync::SupplementalHeatingCoilType[]", XSD::QName.new(NsSchema, "SupplementalHeatingCoilType")], [0, 1]],
      ["supplementalHeatingCoilCapacity", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "SupplementalHeatingCoilCapacity")], [0, 1]],
      ["supplementalGasHeatingCoilEfficiency", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "SupplementalGasHeatingCoilEfficiency")], [0, 1]],
      ["supplementalGasHeatingCoilParasiticElectricLoad", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "SupplementalGasHeatingCoilParasiticElectricLoad")], [0, 1]],
      ["cyclingRateMax", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "CyclingRateMax")], [0, 1]],
      ["heatPumpTimeConstant", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "HeatPumpTimeConstant")], [0, 1]],
      ["fractionOnCyclePowerUse", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "FractionOnCyclePowerUse")], [0, 1]],
      ["heatPumpFanDelayTime", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "HeatPumpFanDelayTime")], [0, 1]],
      ["coolingCoilType", ["BuildingSync::CoolingCoilType[]", XSD::QName.new(NsSchema, "CoolingCoilType")], [0, 1]],
      ["preheatCoilType", ["BuildingSync::PreheatCoilType[]", XSD::QName.new(NsSchema, "PreheatCoilType")], [0, 1]],
      ["gasPreheatCoilEfficiency", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "GasPreheatCoilEfficiency")], [0, 1]],
      ["gasPreheatCoilParasiticElectricLoad", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "GasPreheatCoilParasiticElectricLoad")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "equipmentType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::AirLoopEquipmentId,
    :schema_name => XSD::QName.new(NsSchema, "AirLoopEquipmentId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "airLoopEquipIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::AirLoopId,
    :schema_name => XSD::QName.new(NsSchema, "AirLoopId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "airLoopIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::AirStreamFraction,
    :schema_name => XSD::QName.new(NsSchema, "AirStreamFraction")
  )

  Registry.register(
    :class => BuildingSync::AirTemperature,
    :schema_name => XSD::QName.new(NsSchema, "AirTemperature"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ResetTemperature,
    :schema_name => XSD::QName.new(NsSchema, "ResetTemperature"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "resetSchedIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Albedo,
    :schema_name => XSD::QName.new(NsSchema, "Albedo"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::AltEnergySource,
    :schema_name => XSD::QName.new(NsSchema, "AltEnergySource"),
    :schema_element => [ :choice,
      ["meterId", ["BuildingSync::MeterId[]", XSD::QName.new(NsSchema, "MeterId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "altEnergyType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "resourceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Area,
    :schema_name => XSD::QName.new(NsSchema, "Area"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::BaseboardHeatingType,
    :schema_name => XSD::QName.new(NsSchema, "BaseboardHeatingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::BiomassDensity,
    :schema_name => XSD::QName.new(NsSchema, "BiomassDensity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Blind,
    :schema_name => XSD::QName.new(NsSchema, "Blind"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, nil]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]],
      ["thickness", ["BuildingSync::Thickness[]", XSD::QName.new(NsSchema, "Thickness")], [0, 1]],
      ["conductivity", ["BuildingSync::Conductivity[]", XSD::QName.new(NsSchema, "Conductivity")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::BlowerDoorValue,
    :schema_name => XSD::QName.new(NsSchema, "BlowerDoorValue"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Building,
    :schema_name => XSD::QName.new(NsSchema, "Building"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["streetAddress", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "StreetAddress")], [0, 1]],
      ["area", ["BuildingSync::Area[]", XSD::QName.new(NsSchema, "Area")]],
      ["space", ["BuildingSync::Space[]", XSD::QName.new(NsSchema, "Space")], [1, nil]],
      ["averageNumberOfFloors", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "AverageNumberOfFloors")], [0, 1]],
      ["infiltrationFlow", ["BuildingSync::InfiltrationFlow[]", XSD::QName.new(NsSchema, "InfiltrationFlow")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["spaceBoundary", ["BuildingSync::SpaceBoundary[]", XSD::QName.new(NsSchema, "SpaceBoundary")], [0, 1]],
      ["lighting", ["BuildingSync::Lighting[]", XSD::QName.new(NsSchema, "Lighting")], [0, nil]],
      ["intEquipId", ["BuildingSync::IntEquipId[]", XSD::QName.new(NsSchema, "IntEquipId")], [0, nil]],
      ["meterId", ["BuildingSync::MeterId[]", XSD::QName.new(NsSchema, "MeterId")], [0, nil]],
      ["peakDomesticHotWaterFlow", ["BuildingSync::PeakDomesticHotWaterFlow[]", XSD::QName.new(NsSchema, "PeakDomesticHotWaterFlow")], [0, 1]],
      ["buildingStorey", ["BuildingSync::BuildingStorey[]", XSD::QName.new(NsSchema, "BuildingStorey")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "buildingType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::BuildingStorey,
    :schema_name => XSD::QName.new(NsSchema, "BuildingStorey"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["level", ["BuildingSync::Level[]", XSD::QName.new(NsSchema, "Level")]],
      ["planarGeometry", ["BuildingSync::PlanarGeometry[]", XSD::QName.new(NsSchema, "PlanarGeometry")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CADMaterialId,
    :schema_name => XSD::QName.new(NsSchema, "CADMaterialId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "CADMaterialIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CADModelId,
    :schema_name => XSD::QName.new(NsSchema, "CADModelId"),
    :schema_attribute => {
      XSD::QName.new(nil, "programIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::CADObjectId,
    :schema_name => XSD::QName.new(NsSchema, "CADObjectId"),
    :schema_attribute => {
      XSD::QName.new(nil, "programIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Campus,
    :schema_name => XSD::QName.new(NsSchema, "Campus"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["location", ["BuildingSync::Location_[]", XSD::QName.new(NsSchema, "Location")]],
      ["building", ["BuildingSync::Building[]", XSD::QName.new(NsSchema, "Building")], [1, nil]],
      ["surface", ["BuildingSync::Surface[]", XSD::QName.new(NsSchema, "Surface")], [4, nil]],
      ["yearModeled", ["BuildingSync::YearModeled[]", XSD::QName.new(NsSchema, "YearModeled")], [0, 1]],
      ["daylightSavings", ["SOAP::SOAPBoolean[]", XSD::QName.new(NsSchema, "DaylightSavings")], [0, 1]],
      ["life", ["BuildingSync::Life[]", XSD::QName.new(NsSchema, "Life")], [0, 1]],
      ["altEnergySource", ["BuildingSync::AltEnergySource[]", XSD::QName.new(NsSchema, "AltEnergySource")], [0, nil]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["vegetation", ["BuildingSync::Vegetation[]", XSD::QName.new(NsSchema, "Vegetation")], [0, nil]],
      ["transportation", ["BuildingSync::Transportation[]", XSD::QName.new(NsSchema, "Transportation")], [0, nil]],
      ["meterId", ["BuildingSync::MeterId[]", XSD::QName.new(NsSchema, "MeterId")], [0, nil]],
      ["extEquipId", ["BuildingSync::ExtEquipId[]", XSD::QName.new(NsSchema, "ExtEquipId")], [0, nil]],
      ["lighting", ["BuildingSync::Lighting[]", XSD::QName.new(NsSchema, "Lighting")], [0, nil]],
      ["lightControlId", ["BuildingSync::LightControlId[]", XSD::QName.new(NsSchema, "LightControlId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "designHeatWeathIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "designCoolWeathIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Capacity_,
    :schema_name => XSD::QName.new(NsSchema, "Capacity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "capacityType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::CartesianPoint,
    :schema_name => XSD::QName.new(NsSchema, "CartesianPoint"),
    :schema_element => [
      ["coordinate", ["BuildingSync::Coordinate[]", XSD::QName.new(NsSchema, "Coordinate")], [2, 3]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CDD,
    :schema_name => XSD::QName.new(NsSchema, "CDD"),
    :schema_element => [ :choice,
      ["temperature", ["BuildingSync::Temperature[]", XSD::QName.new(NsSchema, "Temperature")]],
      ["cDDValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "CDDValue")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ClosedShell,
    :schema_name => XSD::QName.new(NsSchema, "ClosedShell"),
    :schema_element => [
      ["polyLoop", ["BuildingSync::PolyLoop[]", XSD::QName.new(NsSchema, "PolyLoop")], [4, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::CLTDParameters,
    :schema_name => XSD::QName.new(NsSchema, "CLTDParameters"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "roofASHRAENumber") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "wallASHRAEGroup") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "roofColor") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "roofHasSuspendedCeiling") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "wallColor") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::CoefficientOfUtilization,
    :schema_name => XSD::QName.new(NsSchema, "CoefficientOfUtilization"),
    :schema_attribute => {
      XSD::QName.new(nil, "wallReflectance") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "ceilingCavityReflectance") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "floorReflectance") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "roomCavityRatio") => "SOAP::SOAPDecimal"
    }
  )

  Registry.register(
    :class => BuildingSync::Conductivity,
    :schema_name => XSD::QName.new(NsSchema, "Conductivity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ConductivityFofT,
    :schema_name => XSD::QName.new(NsSchema, "ConductivityFofT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Construction,
    :schema_name => XSD::QName.new(NsSchema, "Construction"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["u_value", ["BuildingSync::UValue[]", XSD::QName.new(NsSchema, "U-value")], [0, 1]],
      ["absorptance", ["BuildingSync::Absorptance[]", XSD::QName.new(NsSchema, "Absorptance")], [0, nil]],
      ["roughness", ["BuildingSync::Roughness[]", XSD::QName.new(NsSchema, "Roughness")], [0, 1]],
      ["albedo", ["BuildingSync::Albedo[]", XSD::QName.new(NsSchema, "Albedo")], [0, 1]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, nil]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["percentExisting", ["BuildingSync::PercentExisting[]", XSD::QName.new(NsSchema, "PercentExisting")], [0, 1]],
      ["fireFace", ["BuildingSync::FireFace[]", XSD::QName.new(NsSchema, "FireFace")], [0, 2]],
      ["layerId", ["BuildingSync::LayerId[]", XSD::QName.new(NsSchema, "LayerId")], [0, nil]],
      ["extEquipId", ["BuildingSync::ExtEquipId[]", XSD::QName.new(NsSchema, "ExtEquipId")], [0, 1]],
      ["loadCalcInputParameters", ["BuildingSync::LoadCalcInputParameters[]", XSD::QName.new(NsSchema, "LoadCalcInputParameters")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Control,
    :schema_name => XSD::QName.new(NsSchema, "Control"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "controlType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "stages") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "minPowerRatio") => "SOAP::SOAPFloat",
      XSD::QName.new(nil, "operationType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "performanceIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ConvergenceLimits,
    :schema_name => XSD::QName.new(NsSchema, "ConvergenceLimits"),
    :schema_attribute => {
      XSD::QName.new(nil, "minimumSystemTimeStep") => "SOAP::SOAPInteger",
      XSD::QName.new(nil, "maximumHVACIterations") => "SOAP::SOAPInteger",
      XSD::QName.new(nil, "minimumPlantIterations") => "SOAP::SOAPInteger",
      XSD::QName.new(nil, "maximumPlantIterations") => "SOAP::SOAPInteger"
    }
  )

  Registry.register(
    :class => BuildingSync::CoolingCoilSetpointResetType,
    :schema_name => XSD::QName.new(NsSchema, "CoolingCoilSetpointResetType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::CoolingCoilType,
    :schema_name => XSD::QName.new(NsSchema, "CoolingCoilType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Coordinate,
    :schema_name => XSD::QName.new(NsSchema, "Coordinate")
  )

  Registry.register(
    :class => BuildingSync::Cost,
    :schema_name => XSD::QName.new(NsSchema, "Cost"),
    :schema_element => [ :choice,
      ["costValue", ["BuildingSync::CostValue[]", XSD::QName.new(NsSchema, "CostValue")]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "costType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::CostValue,
    :schema_name => XSD::QName.new(NsSchema, "CostValue"),
    :schema_attribute => {
      XSD::QName.new(nil, "currency") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::CreatedBy,
    :schema_name => XSD::QName.new(NsSchema, "CreatedBy"),
    :schema_element => [ :choice,
      ["cADModelId", ["BuildingSync::CADModelId[]", XSD::QName.new(NsSchema, "CADModelId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "personId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "date") => "SOAP::SOAPDateTime"
    }
  )

  Registry.register(
    :class => BuildingSync::DamperHeatingAction,
    :schema_name => XSD::QName.new(NsSchema, "DamperHeatingAction"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::C_Data,
    :schema_name => XSD::QName.new(NsSchema, "Data"),
    :schema_element => [ :choice,
      ["independentValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "IndependentValue")], [1, 2]],
      ["dependentValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "DependentValue")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Day,
    :schema_name => XSD::QName.new(NsSchema, "Day"),
    :schema_attribute => {
      XSD::QName.new(nil, "dayScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "dayType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DaySchedule,
    :schema_name => XSD::QName.new(NsSchema, "DaySchedule"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["scheduleValue", ["BuildingSync::ScheduleValue[]", XSD::QName.new(NsSchema, "ScheduleValue")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "scheduleTypeLimitsId") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::DDDBCool,
    :schema_name => XSD::QName.new(NsSchema, "DDDBCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDDBHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDDBHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDDBRangeCool,
    :schema_name => XSD::QName.new(NsSchema, "DDDBRangeCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDDBRangeHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDDBRangeHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDGroundTCool,
    :schema_name => XSD::QName.new(NsSchema, "DDGroundTCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDGroundTHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDGroundTHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDPressureCool,
    :schema_name => XSD::QName.new(NsSchema, "DDPressureCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDPressureHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDPressureHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDSkyClearnessCool,
    :schema_name => XSD::QName.new(NsSchema, "DDSkyClearnessCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDSkyClearnessHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDSkyClearnessHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWBCool,
    :schema_name => XSD::QName.new(NsSchema, "DDWBCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWBHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDWBHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWindDirCool,
    :schema_name => XSD::QName.new(NsSchema, "DDWindDirCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWindDirHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDWindDirHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWindSpeedCool,
    :schema_name => XSD::QName.new(NsSchema, "DDWindSpeedCool"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DDWindSpeedHeat,
    :schema_name => XSD::QName.new(NsSchema, "DDWindSpeedHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DeltaP,
    :schema_name => XSD::QName.new(NsSchema, "DeltaP"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "hydronicLoopType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "conditioningType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "performanceId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DeltaT,
    :schema_name => XSD::QName.new(NsSchema, "DeltaT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "conditioningType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Density,
    :schema_name => XSD::QName.new(NsSchema, "Density"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DensityFofT,
    :schema_name => XSD::QName.new(NsSchema, "DensityFofT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DependentVariable,
    :schema_name => XSD::QName.new(NsSchema, "DependentVariable"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString",
      XSD::QName.new(nil, "dataType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "minValue") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "maxValue") => "SOAP::SOAPDecimal"
    }
  )

  Registry.register(
    :class => BuildingSync::DesignCoolT,
    :schema_name => XSD::QName.new(NsSchema, "DesignCoolT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DesignFlow,
    :schema_name => XSD::QName.new(NsSchema, "DesignFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::RecircFlow,
    :schema_name => XSD::QName.new(NsSchema, "RecircFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DesignHeatT,
    :schema_name => XSD::QName.new(NsSchema, "DesignHeatT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::DesignPressure,
    :schema_name => XSD::QName.new(NsSchema, "DesignPressure"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::DesignTemp,
    :schema_name => XSD::QName.new(NsSchema, "DesignTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Dimensions,
    :schema_name => XSD::QName.new(NsSchema, "Dimensions"),
    :schema_element => [ :choice,
      ["height", ["BuildingSync::Height[]", XSD::QName.new(NsSchema, "Height")], [0, 1]],
      ["width", ["BuildingSync::Width[]", XSD::QName.new(NsSchema, "Width")], [0, 1]],
      ["length", ["BuildingSync::Length[]", XSD::QName.new(NsSchema, "Length")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::DocumentHistory,
    :schema_name => XSD::QName.new(NsSchema, "DocumentHistory"),
    :schema_element => [ :choice,
      ["createdBy", ["BuildingSync::CreatedBy[]", XSD::QName.new(NsSchema, "CreatedBy")]],
      ["programInfo", ["BuildingSync::ProgramInfo[]", XSD::QName.new(NsSchema, "ProgramInfo")], [1, nil]],
      ["personInfo", ["BuildingSync::PersonInfo[]", XSD::QName.new(NsSchema, "PersonInfo")], [1, nil]],
      ["modifiedBy", ["BuildingSync::ModifiedBy[]", XSD::QName.new(NsSchema, "ModifiedBy")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::EconomizerLockout,
    :schema_name => XSD::QName.new(NsSchema, "EconomizerLockout"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Efficiency,
    :schema_name => XSD::QName.new(NsSchema, "Efficiency"),
    :schema_attribute => {
      XSD::QName.new(nil, "standardsType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "efficiencyType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "operationType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "performanceId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ElecLoad,
    :schema_name => XSD::QName.new(NsSchema, "ElecLoad"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Elevation,
    :schema_name => XSD::QName.new(NsSchema, "Elevation"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::EmissionRate,
    :schema_name => XSD::QName.new(NsSchema, "EmissionRate"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Emittance,
    :schema_name => XSD::QName.new(NsSchema, "Emittance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "surfaceType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Energy,
    :schema_name => XSD::QName.new(NsSchema, "Energy"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "valueType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "timePeriod") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "resourceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "meterIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Enthalpy,
    :schema_name => XSD::QName.new(NsSchema, "Enthalpy"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "enthalpyType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Equation,
    :schema_name => XSD::QName.new(NsSchema, "Equation"),
    :schema_element => [ :choice,
      ["expression", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Expression")]],
      ["independentVariable", ["BuildingSync::IndependentVariable[]", XSD::QName.new(NsSchema, "IndependentVariable")], [1, nil]],
      ["dependentVariable", ["BuildingSync::DependentVariable[]", XSD::QName.new(NsSchema, "DependentVariable")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::EquipPowerPerArea,
    :schema_name => XSD::QName.new(NsSchema, "EquipPowerPerArea"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ExtEquip,
    :schema_name => XSD::QName.new(NsSchema, "ExtEquip"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Manufacturer")], [0, 1]],
      ["model", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Model")], [0, 1]],
      ["elecLoad", ["BuildingSync::ElecLoad[]", XSD::QName.new(NsSchema, "ElecLoad")], [0, 1]],
      ["fuelLoad", ["BuildingSync::FuelLoad[]", XSD::QName.new(NsSchema, "FuelLoad")], [0, 1]],
      ["latentLoad", ["BuildingSync::LatentLoad[]", XSD::QName.new(NsSchema, "LatentLoad")], [0, 1]],
      ["windSpeed", ["BuildingSync::WindSpeed[]", XSD::QName.new(NsSchema, "WindSpeed")], [0, 1]],
      ["efficiency", ["BuildingSync::Efficiency[]", XSD::QName.new(NsSchema, "Efficiency")], [0, nil]],
      ["performance", ["BuildingSync::Performance[]", XSD::QName.new(NsSchema, "Performance")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["weight", ["BuildingSync::Weight[]", XSD::QName.new(NsSchema, "Weight")], [0, 1]],
      ["wasteWaterHREff", ["BuildingSync::WasteWaterHREff[]", XSD::QName.new(NsSchema, "WasteWaterHREff")], [0, 1]],
      ["waterUsePerCycle", ["BuildingSync::WaterUsePerCycle[]", XSD::QName.new(NsSchema, "WaterUsePerCycle")], [0, 1]],
      ["ratedFlow", ["BuildingSync::RatedFlow[]", XSD::QName.new(NsSchema, "RatedFlow")], [0, 1]],
      ["power", ["BuildingSync::Power[]", XSD::QName.new(NsSchema, "Power")], [0, nil]],
      ["cyclesPerWeek", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "CyclesPerWeek")], [0, 1]],
      ["energy", ["BuildingSync::Energy[]", XSD::QName.new(NsSchema, "Energy")], [0, nil]],
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["indoorAirQuality", ["BuildingSync::IndoorAirQuality[]", XSD::QName.new(NsSchema, "IndoorAirQuality")], [0, nil]],
      ["age", ["BuildingSync::Age[]", XSD::QName.new(NsSchema, "Age")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterTempScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterMeterIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "airLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ExtEquipId,
    :schema_name => XSD::QName.new(NsSchema, "ExtEquipId"),
    :schema_attribute => {
      XSD::QName.new(nil, "extEquipIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Fire,
    :schema_name => XSD::QName.new(NsSchema, "Fire"),
    :schema_element => [ :choice,
      ["thickness", ["BuildingSync::Thickness", XSD::QName.new(NsSchema, "Thickness")]],
      ["conductivity", ["BuildingSync::Conductivity", XSD::QName.new(NsSchema, "Conductivity")]],
      ["density", ["BuildingSync::Density", XSD::QName.new(NsSchema, "Density")]],
      ["specificHeat", ["BuildingSync::SpecificHeat", XSD::QName.new(NsSchema, "SpecificHeat")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FireFace,
    :schema_name => XSD::QName.new(NsSchema, "FireFace"),
    :schema_element => [ :choice,
      ["absorptance", ["BuildingSync::Absorptance[]", XSD::QName.new(NsSchema, "Absorptance")], [0, nil]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::FloorSlabHeatLossCoefficient,
    :schema_name => XSD::QName.new(NsSchema, "FloorSlabHeatLossCoefficient"),
    :schema_attribute => {
      XSD::QName.new(nil, "floorSlabPerimeterHeatLossCoefficientUnitTypeEnum") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Flow,
    :schema_name => XSD::QName.new(NsSchema, "Flow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FlowControl,
    :schema_name => XSD::QName.new(NsSchema, "FlowControl"),
    :schema_element => [ :choice,
      ["designFlow", ["BuildingSync::DesignFlow[]", XSD::QName.new(NsSchema, "DesignFlow")], [0, 1]],
      ["minimumFlow", ["BuildingSync::MinimumFlow[]", XSD::QName.new(NsSchema, "MinimumFlow")], [0, 1]],
      ["maximumFlow", ["BuildingSync::MaximumFlow[]", XSD::QName.new(NsSchema, "MaximumFlow")], [0, 1]],
      ["recircFlow", ["BuildingSync::RecircFlow[]", XSD::QName.new(NsSchema, "RecircFlow")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "processScheduleId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FlowPerArea,
    :schema_name => XSD::QName.new(NsSchema, "FlowPerArea"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FlowPerPerson,
    :schema_name => XSD::QName.new(NsSchema, "FlowPerPerson"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::FlowType,
    :schema_name => XSD::QName.new(NsSchema, "FlowType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "flowType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Frame,
    :schema_name => XSD::QName.new(NsSchema, "Frame"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["width", ["BuildingSync::Width[]", XSD::QName.new(NsSchema, "Width")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::FuelLoad,
    :schema_name => XSD::QName.new(NsSchema, "FuelLoad"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Gap,
    :schema_name => XSD::QName.new(NsSchema, "Gap"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["thickness", ["BuildingSync::Thickness[]", XSD::QName.new(NsSchema, "Thickness")], [0, 1]],
      ["density", ["BuildingSync::Density[]", XSD::QName.new(NsSchema, "Density")], [0, 1]],
      ["densityFofT", ["BuildingSync::DensityFofT[]", XSD::QName.new(NsSchema, "DensityFofT")], [0, 1]],
      ["conductivity", ["BuildingSync::Conductivity[]", XSD::QName.new(NsSchema, "Conductivity")], [0, 1]],
      ["conductivityFofT", ["BuildingSync::ConductivityFofT[]", XSD::QName.new(NsSchema, "ConductivityFofT")], [0, 1]],
      ["viscosity", ["BuildingSync::Viscosity[]", XSD::QName.new(NsSchema, "Viscosity")], [0, 1]],
      ["viscosityFofT", ["BuildingSync::ViscosityFofT[]", XSD::QName.new(NsSchema, "ViscosityFofT")], [0, 1]],
      ["prandtlNumber", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "PrandtlNumber")], [0, 1]],
      ["prandtlNumberFofT", ["BuildingSync::PrandtlNumberFofT[]", XSD::QName.new(NsSchema, "PrandtlNumberFofT")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "gas") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::GapId,
    :schema_name => XSD::QName.new(NsSchema, "GapId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "gapIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::GeneralGeometry,
    :schema_name => XSD::QName.new(NsSchema, "GeneralGeometry"),
    :schema_element => [ :choice,
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Glare,
    :schema_name => XSD::QName.new(NsSchema, "Glare"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Glaze,
    :schema_name => XSD::QName.new(NsSchema, "Glaze"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, nil]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]],
      ["thickness", ["BuildingSync::Thickness[]", XSD::QName.new(NsSchema, "Thickness")], [0, 1]],
      ["conductivity", ["BuildingSync::Conductivity[]", XSD::QName.new(NsSchema, "Conductivity")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::GlazeConductivity,
    :schema_name => XSD::QName.new(NsSchema, "GlazeConductivity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::GlazeId,
    :schema_name => XSD::QName.new(NsSchema, "GlazeId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "glazeIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::GroundTemp,
    :schema_name => XSD::QName.new(NsSchema, "GroundTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::GUID,
    :schema_name => XSD::QName.new(NsSchema, "GUID"),
    :schema_attribute => {
      XSD::QName.new(nil, "entity") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HDD,
    :schema_name => XSD::QName.new(NsSchema, "HDD"),
    :schema_element => [ :choice,
      ["temperature", ["BuildingSync::Temperature[]", XSD::QName.new(NsSchema, "Temperature")]],
      ["hDDValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "HDDValue")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::HeatingCoilSetpointResetType,
    :schema_name => XSD::QName.new(NsSchema, "HeatingCoilSetpointResetType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatPumpDefrostControl,
    :schema_name => XSD::QName.new(NsSchema, "HeatPumpDefrostControl"),
    :schema_attribute => {
      XSD::QName.new(nil, "defrostControlType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatPumpDefrostStrategy,
    :schema_name => XSD::QName.new(NsSchema, "HeatPumpDefrostStrategy"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRecoveryType,
    :schema_name => XSD::QName.new(NsSchema, "HeatRecoveryType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Height,
    :schema_name => XSD::QName.new(NsSchema, "Height"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HighLimit,
    :schema_name => XSD::QName.new(NsSchema, "HighLimit"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HighValue,
    :schema_name => XSD::QName.new(NsSchema, "HighValue"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HorizontalSolar,
    :schema_name => XSD::QName.new(NsSchema, "HorizontalSolar"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HOutside,
    :schema_name => XSD::QName.new(NsSchema, "HOutside"),
    :schema_attribute => {
      XSD::QName.new(nil, "hOutsideUnitTypeEnum") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HydronicLoop,
    :schema_name => XSD::QName.new(NsSchema, "HydronicLoop"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["hydronicLoopEquipment", ["BuildingSync::HydronicLoopEquipment[]", XSD::QName.new(NsSchema, "HydronicLoopEquipment")], [0, nil]],
      ["flowControl", ["BuildingSync::FlowControl[]", XSD::QName.new(NsSchema, "FlowControl")], [0, 1]],
      ["temperatureControl", ["BuildingSync::TemperatureControl[]", XSD::QName.new(NsSchema, "TemperatureControl")], [0, 1]],
      ["designCoolT", ["BuildingSync::DesignCoolT[]", XSD::QName.new(NsSchema, "DesignCoolT")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "loopType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "controlZoneIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "primaryLoopId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "fluidType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HydronicLoopEquipment,
    :schema_name => XSD::QName.new(NsSchema, "HydronicLoopEquipment"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Manufacturer")], [0, 1]],
      ["model", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Model")], [0, 1]],
      ["operationSchedule", ["BuildingSync::OperationSchedule[]", XSD::QName.new(NsSchema, "OperationSchedule")], [0, 1]],
      ["temp", ["BuildingSync::Temp[]", XSD::QName.new(NsSchema, "Temp")], [0, nil]],
      ["resetTemperature", ["BuildingSync::ResetTemperature[]", XSD::QName.new(NsSchema, "ResetTemperature")], [0, nil]],
      ["hydronicLoopId", ["BuildingSync::HydronicLoopId[]", XSD::QName.new(NsSchema, "HydronicLoopId")], [0, nil]],
      ["ratedFlow", ["BuildingSync::RatedFlow[]", XSD::QName.new(NsSchema, "RatedFlow")], [0, 2]],
      ["minFlow", ["BuildingSync::MinFlow[]", XSD::QName.new(NsSchema, "MinFlow")], [0, 2]],
      ["deltaT", ["BuildingSync::DeltaT[]", XSD::QName.new(NsSchema, "DeltaT")], [0, 2]],
      ["deltaP", ["BuildingSync::DeltaP[]", XSD::QName.new(NsSchema, "DeltaP")], [0, 2]],
      ["power", ["BuildingSync::Power[]", XSD::QName.new(NsSchema, "Power")], [0, nil]],
      ["capacity", ["BuildingSync::Capacity_[]", XSD::QName.new(NsSchema, "Capacity")], [0, nil]],
      ["efficiency", ["BuildingSync::Efficiency[]", XSD::QName.new(NsSchema, "Efficiency")], [0, nil]],
      ["control", ["BuildingSync::Control[]", XSD::QName.new(NsSchema, "Control")], [0, nil]],
      ["performance", ["BuildingSync::Performance[]", XSD::QName.new(NsSchema, "Performance")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["weight", ["BuildingSync::Weight[]", XSD::QName.new(NsSchema, "Weight")], [0, 1]],
      ["life", ["BuildingSync::Life[]", XSD::QName.new(NsSchema, "Life")], [0, 1]],
      ["refrigerantType", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "RefrigerantType")], [0, 1]],
      ["energy", ["BuildingSync::Energy[]", XSD::QName.new(NsSchema, "Energy")], [0, nil]],
      ["age", ["BuildingSync::Age[]", XSD::QName.new(NsSchema, "Age")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]],
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "equipmentType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "waterMeterIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "primaryLoopId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HydronicLoopEquipmentId,
    :schema_name => XSD::QName.new(NsSchema, "HydronicLoopEquipmentId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "hydronicLoopEquipIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::HydronicLoopId,
    :schema_name => XSD::QName.new(NsSchema, "HydronicLoopId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Illuminance,
    :schema_name => XSD::QName.new(NsSchema, "Illuminance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ImageTexture,
    :schema_name => XSD::QName.new(NsSchema, "ImageTexture"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "url") => "SOAP::SOAPString",
      XSD::QName.new(nil, "repeatS") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "repeatT") => "SOAP::SOAPBoolean"
    }
  )

  Registry.register(
    :class => BuildingSync::IndependentVariable,
    :schema_name => XSD::QName.new(NsSchema, "IndependentVariable"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString",
      XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::IndoorAirQuality,
    :schema_name => XSD::QName.new(NsSchema, "IndoorAirQuality"),
    :schema_element => [ :choice,
      ["emissionRate", ["BuildingSync::EmissionRate[]", XSD::QName.new(NsSchema, "EmissionRate")], [0, 1]],
      ["sinkRate", ["BuildingSync::SinkRate[]", XSD::QName.new(NsSchema, "SinkRate")], [0, 1]],
      ["highLimit", ["BuildingSync::HighLimit[]", XSD::QName.new(NsSchema, "HighLimit")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::InfiltrationFlow,
    :schema_name => XSD::QName.new(NsSchema, "InfiltrationFlow"),
    :schema_element => [ :choice,
      ["blowerDoorValue", ["BuildingSync::BlowerDoorValue[]", XSD::QName.new(NsSchema, "BlowerDoorValue")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::InputWatts,
    :schema_name => XSD::QName.new(NsSchema, "InputWatts"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::InsideAirFilmResistance,
    :schema_name => XSD::QName.new(NsSchema, "InsideAirFilmResistance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::IntEquip,
    :schema_name => XSD::QName.new(NsSchema, "IntEquip"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Manufacturer")], [0, 1]],
      ["model", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Model")], [0, 1]],
      ["elecLoad", ["BuildingSync::ElecLoad[]", XSD::QName.new(NsSchema, "ElecLoad")], [0, 1]],
      ["fuelLoad", ["BuildingSync::FuelLoad[]", XSD::QName.new(NsSchema, "FuelLoad")], [0, 1]],
      ["latentLoad", ["BuildingSync::LatentLoad[]", XSD::QName.new(NsSchema, "LatentLoad")], [0, 1]],
      ["efficiency", ["BuildingSync::Efficiency[]", XSD::QName.new(NsSchema, "Efficiency")], [0, nil]],
      ["performance", ["BuildingSync::Performance[]", XSD::QName.new(NsSchema, "Performance")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["weight", ["BuildingSync::Weight[]", XSD::QName.new(NsSchema, "Weight")], [0, 1]],
      ["wasteWaterHREff", ["BuildingSync::WasteWaterHREff[]", XSD::QName.new(NsSchema, "WasteWaterHREff")], [0, 1]],
      ["waterUsePerCycle", ["BuildingSync::WaterUsePerCycle[]", XSD::QName.new(NsSchema, "WaterUsePerCycle")], [0, 1]],
      ["ratedFlow", ["BuildingSync::RatedFlow[]", XSD::QName.new(NsSchema, "RatedFlow")], [0, 1]],
      ["heatRejectedtoSpace", ["BuildingSync::HeatRejectedtoSpace[]", XSD::QName.new(NsSchema, "HeatRejectedtoSpace")], [0, 1]],
      ["power", ["BuildingSync::Power[]", XSD::QName.new(NsSchema, "Power")], [0, nil]],
      ["cyclesPerWeek", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "CyclesPerWeek")], [0, 1]],
      ["energy", ["BuildingSync::Energy[]", XSD::QName.new(NsSchema, "Energy")], [0, nil]],
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["indoorAirQuality", ["BuildingSync::IndoorAirQuality[]", XSD::QName.new(NsSchema, "IndoorAirQuality")], [0, nil]],
      ["age", ["BuildingSync::Age[]", XSD::QName.new(NsSchema, "Age")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterTempScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterMeterIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "airLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::IntEquipId,
    :schema_name => XSD::QName.new(NsSchema, "IntEquipId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "intEquipIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LatentLoad,
    :schema_name => XSD::QName.new(NsSchema, "LatentLoad"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Layer,
    :schema_name => XSD::QName.new(NsSchema, "Layer"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["insideAirFilmResistance", ["BuildingSync::InsideAirFilmResistance[]", XSD::QName.new(NsSchema, "InsideAirFilmResistance")], [0, 1]],
      ["materialId", ["BuildingSync::MaterialId[]", XSD::QName.new(NsSchema, "MaterialId")]],
      ["hOutside", ["BuildingSync::HOutside[]", XSD::QName.new(NsSchema, "HOutside")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::LayerId,
    :schema_name => XSD::QName.new(NsSchema, "LayerId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "layerIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Length,
    :schema_name => XSD::QName.new(NsSchema, "Length"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Level,
    :schema_name => XSD::QName.new(NsSchema, "Level"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Life,
    :schema_name => XSD::QName.new(NsSchema, "Life"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::LightControlId,
    :schema_name => XSD::QName.new(NsSchema, "LightControlId"),
    :schema_attribute => {
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LightId,
    :schema_name => XSD::QName.new(NsSchema, "LightId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "lightIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Lighting,
    :schema_name => XSD::QName.new(NsSchema, "Lighting"),
    :schema_element => [ :choice,
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["coefficientOfUtilization", ["BuildingSync::CoefficientOfUtilization[]", XSD::QName.new(NsSchema, "CoefficientOfUtilization")], [0, 1]],
      ["photometryOrientation", ["BuildingSync::PhotometryOrientation[]", XSD::QName.new(NsSchema, "PhotometryOrientation")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "lightingSystemIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "lightingControlIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "meterIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingControl,
    :schema_name => XSD::QName.new(NsSchema, "LightingControl"),
    :schema_element => [ :choice,
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["illuminance", ["BuildingSync::Illuminance[]", XSD::QName.new(NsSchema, "Illuminance")], [0, 1]],
      ["cartesianPoint", ["BuildingSync::CartesianPoint[]", XSD::QName.new(NsSchema, "CartesianPoint")], [0, 1]],
      ["minPowerFrac", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "MinPowerFrac")], [0, 1]],
      ["minLightFrac", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "MinLightFrac")], [0, 1]],
      ["percentAreaDaylitControlled", ["BuildingSync::PercentAreaDaylitControlled[]", XSD::QName.new(NsSchema, "PercentAreaDaylitControlled")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "lightingSystemIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LightingSystem,
    :schema_name => XSD::QName.new(NsSchema, "LightingSystem"),
    :schema_element => [ :choice,
      ["manufacturer", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Manufacturer")], [0, 1]],
      ["numberOfLamps", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "NumberOfLamps")], [0, 1]],
      ["lumensPerLamp", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "LumensPerLamp")], [0, 1]],
      ["dimensions", ["BuildingSync::Dimensions[]", XSD::QName.new(NsSchema, "Dimensions")], [0, 1]],
      ["inputWatts", ["BuildingSync::InputWatts[]", XSD::QName.new(NsSchema, "InputWatts")], [0, 1]],
      ["ballast", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Ballast")], [0, 1]],
      ["lamp", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Lamp")], [1, nil]],
      ["luminaire", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Luminaire")], [0, 1]],
      ["photometry", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Photometry")], [0, 1]],
      ["coefficientOfUtilization", ["BuildingSync::CoefficientOfUtilization[]", XSD::QName.new(NsSchema, "CoefficientOfUtilization")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LightPowerPerArea,
    :schema_name => XSD::QName.new(NsSchema, "LightPowerPerArea"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::LoadCalcInputParameters,
    :schema_name => XSD::QName.new(NsSchema, "LoadCalcInputParameters"),
    :schema_element => [ :choice,
      ["rTSParameters", ["BuildingSync::RTSParameters[]", XSD::QName.new(NsSchema, "RTSParameters")], [0, 1]],
      ["cLTDParameters", ["BuildingSync::CLTDParameters[]", XSD::QName.new(NsSchema, "CLTDParameters")], [0, 1]],
      ["manualJ8Parameters", ["BuildingSync::ManualJ8Parameters[]", XSD::QName.new(NsSchema, "ManualJ8Parameters")], [0, 1]],
      ["floorSlabHeatLossCoefficient", ["BuildingSync::FloorSlabHeatLossCoefficient[]", XSD::QName.new(NsSchema, "FloorSlabHeatLossCoefficient")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Location_,
    :schema_name => XSD::QName.new(NsSchema, "Location"),
    :schema_element => [
      ["stationId", ["BuildingSync::StationId", XSD::QName.new(NsSchema, "StationId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["zipcodeOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSchema, "ZipcodeOrPostalCode")]],
      ["longitude", ["SOAP::SOAPDecimal", XSD::QName.new(NsSchema, "Longitude")], [0, 1]],
      ["latitude", ["SOAP::SOAPDecimal", XSD::QName.new(NsSchema, "Latitude")], [0, 1]],
      ["elevation", ["BuildingSync::Elevation", XSD::QName.new(NsSchema, "Elevation")], [0, 1]],
      ["cADModelAzimuth", ["SOAP::SOAPDouble", XSD::QName.new(NsSchema, "CADModelAzimuth")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::LowValue,
    :schema_name => XSD::QName.new(NsSchema, "LowValue"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ManualJ8Parameters,
    :schema_name => XSD::QName.new(NsSchema, "ManualJ8Parameters"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "wallGroupManualJ") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "roofCLTDIndex") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "floorIsRadiant") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "floorCrawlSpaceWallUValue") => "SOAP::SOAPFloat",
      XSD::QName.new(nil, "floorCrawlSpaceIsSealed") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "floorCategory") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Material,
    :schema_name => XSD::QName.new(NsSchema, "Material"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["absorptance", ["BuildingSync::Absorptance[]", XSD::QName.new(NsSchema, "Absorptance")], [0, 1]],
      ["roughness", ["BuildingSync::Roughness[]", XSD::QName.new(NsSchema, "Roughness")], [0, 1]],
      ["albedo", ["BuildingSync::Albedo[]", XSD::QName.new(NsSchema, "Albedo")], [0, 1]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, 1]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, 1]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, 1]],
      ["imageTexture", ["BuildingSync::ImageTexture[]", XSD::QName.new(NsSchema, "ImageTexture")], [0, 1]],
      ["r_value", ["BuildingSync::RValue[]", XSD::QName.new(NsSchema, "R-value")], [0, 1]],
      ["thickness", ["BuildingSync::Thickness[]", XSD::QName.new(NsSchema, "Thickness")], [0, 1]],
      ["conductivity", ["BuildingSync::Conductivity[]", XSD::QName.new(NsSchema, "Conductivity")], [0, 1]],
      ["density", ["BuildingSync::Density[]", XSD::QName.new(NsSchema, "Density")], [0, 1]],
      ["specificHeat", ["BuildingSync::SpecificHeat[]", XSD::QName.new(NsSchema, "SpecificHeat")], [0, 1]],
      ["permeance", ["BuildingSync::Permeance[]", XSD::QName.new(NsSchema, "Permeance")], [0, 1]],
      ["porosity", ["BuildingSync::Porosity[]", XSD::QName.new(NsSchema, "Porosity")], [0, 1]],
      ["recycledContent", ["BuildingSync::RecycledContent[]", XSD::QName.new(NsSchema, "RecycledContent")], [0, 1]],
      ["fire", ["BuildingSync::Fire[]", XSD::QName.new(NsSchema, "Fire")], [0, 1]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, 1]],
      ["indoorAirQuality", ["BuildingSync::IndoorAirQuality[]", XSD::QName.new(NsSchema, "IndoorAirQuality")], [0, 1]],
      ["cADMaterialId", ["BuildingSync::CADMaterialId[]", XSD::QName.new(NsSchema, "CADMaterialId")], [0, nil]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::MaterialId,
    :schema_name => XSD::QName.new(NsSchema, "MaterialId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "materialIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "percentOfLayer") => "SOAP::SOAPDouble"
    }
  )

  Registry.register(
    :class => BuildingSync::MaxOAFlowPerZone,
    :schema_name => XSD::QName.new(NsSchema, "MaxOAFlowPerZone"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MaxPressure,
    :schema_name => XSD::QName.new(NsSchema, "MaxPressure"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MaxRelativeHumidity,
    :schema_name => XSD::QName.new(NsSchema, "MaxRelativeHumidity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MaxTemp,
    :schema_name => XSD::QName.new(NsSchema, "MaxTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MaximumFlow,
    :schema_name => XSD::QName.new(NsSchema, "MaximumFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Meter,
    :schema_name => XSD::QName.new(NsSchema, "Meter"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["utilityRate", ["BuildingSync::UtilityRate[]", XSD::QName.new(NsSchema, "UtilityRate")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "resourceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MeterId,
    :schema_name => XSD::QName.new(NsSchema, "MeterId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "meterIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MinFlow,
    :schema_name => XSD::QName.new(NsSchema, "MinFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => nil,
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MinimumFlow,
    :schema_name => XSD::QName.new(NsSchema, "MinimumFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MinOAFlowPerZone,
    :schema_name => XSD::QName.new(NsSchema, "MinOAFlowPerZone"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::MinimumOutdoorAirControlType,
    :schema_name => XSD::QName.new(NsSchema, "MinimumOutdoorAirControlType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MinRelativeHumidity,
    :schema_name => XSD::QName.new(NsSchema, "MinRelativeHumidity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MinPressure,
    :schema_name => XSD::QName.new(NsSchema, "MinPressure"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::MinTemp,
    :schema_name => XSD::QName.new(NsSchema, "MinTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ModifiedBy,
    :schema_name => XSD::QName.new(NsSchema, "ModifiedBy"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "personId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "date") => "SOAP::SOAPDateTime"
    }
  )

  Registry.register(
    :class => BuildingSync::NaturalVentHiTemp,
    :schema_name => XSD::QName.new(NsSchema, "NaturalVentHiTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::NaturalVentLoTemp,
    :schema_name => XSD::QName.new(NsSchema, "NaturalVentLoTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::NightCycleControl,
    :schema_name => XSD::QName.new(NsSchema, "NightCycleControl"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::OAFlowPerArea,
    :schema_name => XSD::QName.new(NsSchema, "OAFlowPerArea"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::OAFlowPerPerson,
    :schema_name => XSD::QName.new(NsSchema, "OAFlowPerPerson"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::OAFlowPerZone,
    :schema_name => XSD::QName.new(NsSchema, "OAFlowPerZone"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Opening,
    :schema_name => XSD::QName.new(NsSchema, "Opening"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["shadeControl", ["BuildingSync::ShadeControl[]", XSD::QName.new(NsSchema, "ShadeControl")], [0, 1]],
      ["u_value", ["BuildingSync::UValue[]", XSD::QName.new(NsSchema, "U-value")], [0, 1]],
      ["shadingCoeff", ["BuildingSync::ShadingCoeff[]", XSD::QName.new(NsSchema, "ShadingCoeff")], [0, 1]],
      ["solarHeatGainCoeff", ["BuildingSync::SolarHeatGainCoeff[]", XSD::QName.new(NsSchema, "SolarHeatGainCoeff")], [0, nil]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, nil]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["glazeConductivity", ["BuildingSync::GlazeConductivity[]", XSD::QName.new(NsSchema, "GlazeConductivity")], [0, 1]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]],
      ["setback", ["BuildingSync::Setback[]", XSD::QName.new(NsSchema, "Setback")], [0, 1]],
      ["naturalVentHiTemp", ["BuildingSync::NaturalVentHiTemp[]", XSD::QName.new(NsSchema, "NaturalVentHiTemp")], [0, 1]],
      ["naturalVentLoTemp", ["BuildingSync::NaturalVentLoTemp[]", XSD::QName.new(NsSchema, "NaturalVentLoTemp")], [0, 1]],
      ["naturalVentOccDep", ["SOAP::SOAPBoolean[]", XSD::QName.new(NsSchema, "NaturalVentOccDep")], [0, 1]],
      ["rectangularGeometry", ["BuildingSync::RectangularGeometry[]", XSD::QName.new(NsSchema, "RectangularGeometry")]],
      ["planarGeometry", ["BuildingSync::PlanarGeometry[]", XSD::QName.new(NsSchema, "PlanarGeometry")]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "coordinatesAbsolute") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "interiorShadeType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "exteriorShadeType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "windowTypeIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "constructionIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "openingType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::OperationRange,
    :schema_name => XSD::QName.new(NsSchema, "OperationRange"),
    :schema_element => [ :choice,
      ["lowValue", ["BuildingSync::LowValue[]", XSD::QName.new(NsSchema, "LowValue")]],
      ["highValue", ["BuildingSync::HighValue[]", XSD::QName.new(NsSchema, "HighValue")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::OperationSchedule,
    :schema_name => XSD::QName.new(NsSchema, "OperationSchedule"),
    :schema_element => [ :choice,
      ["operationRange", ["BuildingSync::OperationRange[]", XSD::QName.new(NsSchema, "OperationRange")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ParallelFanOnFlowFraction,
    :schema_name => XSD::QName.new(NsSchema, "ParallelFanOnFlowFraction")
  )

  Registry.register(
    :class => BuildingSync::PeakDomesticHotWaterFlow,
    :schema_name => XSD::QName.new(NsSchema, "PeakDomesticHotWaterFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterUseScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::PeopleNumber,
    :schema_name => XSD::QName.new(NsSchema, "PeopleNumber"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::PeopleHeatGain,
    :schema_name => XSD::QName.new(NsSchema, "PeopleHeatGain"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "heatGainType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::PercentAreaDaylitControlled,
    :schema_name => XSD::QName.new(NsSchema, "PercentAreaDaylitControlled"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::PercentExisting,
    :schema_name => XSD::QName.new(NsSchema, "PercentExisting"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Performance,
    :schema_name => XSD::QName.new(NsSchema, "Performance"),
    :schema_element => [ :choice,
      ["pointData", ["BuildingSync::PointData[]", XSD::QName.new(NsSchema, "PointData")], [0, nil]],
      ["equation", ["BuildingSync::Equation[]", XSD::QName.new(NsSchema, "Equation")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "performanceType") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Permeance,
    :schema_name => XSD::QName.new(NsSchema, "Permeance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::PersonInfo,
    :schema_name => XSD::QName.new(NsSchema, "PersonInfo"),
    :schema_element => [ :choice,
      ["firstName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "FirstName")]],
      ["lastName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "LastName")]],
      ["middleName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "MiddleName")], [0, 1]],
      ["address1", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Address1")], [0, 1]],
      ["address2", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Address2")], [0, 1]],
      ["city", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "State")], [0, 1]],
      ["zipCode", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "ZipCode")], [0, 1]],
      ["country", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Country")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "PhoneNumber")], [0, 1]],
      ["email1Address", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Email1Address")], [0, 1]],
      ["webPage", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "WebPage")], [0, 1]],
      ["companyName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "CompanyName")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::PhotometryOrientation,
    :schema_name => XSD::QName.new(NsSchema, "PhotometryOrientation"),
    :schema_element => [
      ["cartesianPoint", ["BuildingSync::CartesianPoint[]", XSD::QName.new(NsSchema, "CartesianPoint")], [4, 4]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PlanarGeometry,
    :schema_name => XSD::QName.new(NsSchema, "PlanarGeometry"),
    :schema_element => [ :choice,
      ["polyLoop", ["BuildingSync::PolyLoop[]", XSD::QName.new(NsSchema, "PolyLoop")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::PointData,
    :schema_name => XSD::QName.new(NsSchema, "PointData"),
    :schema_element => [ :choice,
      ["independentVariable", ["BuildingSync::IndependentVariable[]", XSD::QName.new(NsSchema, "IndependentVariable")], [1, nil]],
      ["dependentVariable", ["BuildingSync::DependentVariable[]", XSD::QName.new(NsSchema, "DependentVariable")], [0, nil]],
      ["data", ["BuildingSync::C_Data[]", XSD::QName.new(NsSchema, "Data")], [1, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::PolyLoop,
    :schema_name => XSD::QName.new(NsSchema, "PolyLoop"),
    :schema_element => [
      ["cartesianPoint", ["BuildingSync::CartesianPoint[]", XSD::QName.new(NsSchema, "CartesianPoint")], [3, nil]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Porosity,
    :schema_name => XSD::QName.new(NsSchema, "Porosity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Power,
    :schema_name => XSD::QName.new(NsSchema, "Power"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "powerType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "useType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "meterIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::PrandtlNumberFofT,
    :schema_name => XSD::QName.new(NsSchema, "PrandtlNumberFofT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::PreheatCoilType,
    :schema_name => XSD::QName.new(NsSchema, "PreheatCoilType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::PressureControl,
    :schema_name => XSD::QName.new(NsSchema, "PressureControl"),
    :schema_element => [ :choice,
      ["designPressure", ["BuildingSync::DesignPressure[]", XSD::QName.new(NsSchema, "DesignPressure")], [0, 1]],
      ["minPressure", ["BuildingSync::MinPressure[]", XSD::QName.new(NsSchema, "MinPressure")], [0, 1]],
      ["maxPressure", ["BuildingSync::MaxPressure[]", XSD::QName.new(NsSchema, "MaxPressure")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ProductName,
    :schema_name => XSD::QName.new(NsSchema, "ProductName")
  )

  Registry.register(
    :class => BuildingSync::ProjectEntity,
    :schema_name => XSD::QName.new(NsSchema, "ProjectEntity"),
    :schema_element => [ :choice,
      ["fileName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "FileName")], [0, 1]],
      ["uRI", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "URI")]],
      ["gUID", ["BuildingSync::GUID[]", XSD::QName.new(NsSchema, "GUID")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::ProgramInfo,
    :schema_name => XSD::QName.new(NsSchema, "ProgramInfo"),
    :schema_element => [ :choice,
      ["companyName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "CompanyName")], [0, 1]],
      ["productName", ["BuildingSync::ProductName[]", XSD::QName.new(NsSchema, "ProductName")]],
      ["version", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Version")]],
      ["platform", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Platform")]],
      ["projectEntity", ["BuildingSync::ProjectEntity[]", XSD::QName.new(NsSchema, "ProjectEntity")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::RatedFlow,
    :schema_name => XSD::QName.new(NsSchema, "RatedFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::RectangularGeometry,
    :schema_name => XSD::QName.new(NsSchema, "RectangularGeometry"),
    :schema_element => [ :choice,
      ["azimuth", ["SOAP::SOAPDouble[]", XSD::QName.new(NsSchema, "Azimuth")]],
      ["cartesianPoint", ["BuildingSync::CartesianPoint[]", XSD::QName.new(NsSchema, "CartesianPoint")]],
      ["tilt", ["SOAP::SOAPDouble[]", XSD::QName.new(NsSchema, "Tilt")]],
      ["height", ["BuildingSync::Height[]", XSD::QName.new(NsSchema, "Height")]],
      ["width", ["BuildingSync::Width[]", XSD::QName.new(NsSchema, "Width")]],
      ["polyLoop", ["BuildingSync::PolyLoop[]", XSD::QName.new(NsSchema, "PolyLoop")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::RecycledContent,
    :schema_name => XSD::QName.new(NsSchema, "RecycledContent"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Reflectance,
    :schema_name => XSD::QName.new(NsSchema, "Reflectance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "surfaceType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Results,
    :schema_name => XSD::QName.new(NsSchema, "Results"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["value", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "Value")], [1, nil]],
      ["objectId", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "ObjectId")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]],
      ["cartesianPoint", ["BuildingSync::CartesianPoint[]", XSD::QName.new(NsSchema, "CartesianPoint")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "unit") => nil,
      XSD::QName.new(nil, "currency") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "resultsType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "resourceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "valueType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "startTime") => "SOAP::SOAPDateTime",
      XSD::QName.new(nil, "timeIncrement") => "SOAP::SOAPDuration"
    }
  )

  Registry.register(
    :class => BuildingSync::Roughness,
    :schema_name => XSD::QName.new(NsSchema, "Roughness"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "value") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::RTSParameters,
    :schema_name => XSD::QName.new(NsSchema, "RTSParameters"),
    :schema_element => [ :choice,
      ["hOutside", ["BuildingSync::HOutside", XSD::QName.new(NsSchema, "HOutside")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "roofCTSType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "wallCTSType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::RValue,
    :schema_name => XSD::QName.new(NsSchema, "R-value"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ShadeControl,
    :schema_name => XSD::QName.new(NsSchema, "ShadeControl"),
    :schema_element => [ :choice,
      ["shadeSchedule", ["BuildingSync::ShadeSchedule[]", XSD::QName.new(NsSchema, "ShadeSchedule")], [0, 1]],
      ["solarOnOpening", ["BuildingSync::SolarOnOpening[]", XSD::QName.new(NsSchema, "SolarOnOpening")], [0, 1]],
      ["horizontalSolar", ["BuildingSync::HorizontalSolar[]", XSD::QName.new(NsSchema, "HorizontalSolar")], [0, 1]],
      ["airTemperature", ["BuildingSync::AirTemperature[]", XSD::QName.new(NsSchema, "AirTemperature")], [0, 1]],
      ["zoneCoolingLoad", ["BuildingSync::ZoneCoolingLoad[]", XSD::QName.new(NsSchema, "ZoneCoolingLoad")], [0, 1]],
      ["glare", ["BuildingSync::Glare[]", XSD::QName.new(NsSchema, "Glare")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ShadeSchedule,
    :schema_name => XSD::QName.new(NsSchema, "ShadeSchedule"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::Schedule,
    :schema_name => XSD::QName.new(NsSchema, "Schedule"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["yearSchedule", ["BuildingSync::YearSchedule[]", XSD::QName.new(NsSchema, "YearSchedule")], [1, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ScheduleTypeLimits,
    :schema_name => XSD::QName.new(NsSchema, "ScheduleTypeLimits"),
    :schema_element => [ :choice,
      ["lowerLimitValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "LowerLimitValue")], [0, 1]],
      ["upperLimitValue", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "UpperLimitValue")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ScheduleValue,
    :schema_name => XSD::QName.new(NsSchema, "ScheduleValue"),
    :schema_attribute => {
      XSD::QName.new(nil, "OutsideHighReset") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "OutsideLowReset") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "SupplyHighReset") => "SOAP::SOAPDecimal",
      XSD::QName.new(nil, "SupplyLowReset") => "SOAP::SOAPDecimal"
    }
  )

  Registry.register(
    :class => BuildingSync::SecondaryFlow,
    :schema_name => XSD::QName.new(NsSchema, "SecondaryFlow"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Setback,
    :schema_name => XSD::QName.new(NsSchema, "Setback"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ShadingCoeff,
    :schema_name => XSD::QName.new(NsSchema, "ShadingCoeff"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ShellGeometry,
    :schema_name => XSD::QName.new(NsSchema, "ShellGeometry"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["closedShell", ["BuildingSync::ClosedShell[]", XSD::QName.new(NsSchema, "ClosedShell")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::SimulationParameters,
    :schema_name => XSD::QName.new(NsSchema, "SimulationParameters"),
    :schema_element => [ :choice,
      ["convergenceLimits", ["BuildingSync::ConvergenceLimits", XSD::QName.new(NsSchema, "ConvergenceLimits")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "timestep") => "SOAP::SOAPDecimal"
    }
  )

  Registry.register(
    :class => BuildingSync::SinkRate,
    :schema_name => XSD::QName.new(NsSchema, "SinkRate"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::SolarHeatGainCoeff,
    :schema_name => XSD::QName.new(NsSchema, "SolarHeatGainCoeff"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "solarIncidentAngle") => "SOAP::SOAPDecimal"
    }
  )

  Registry.register(
    :class => BuildingSync::SolarOnOpening,
    :schema_name => XSD::QName.new(NsSchema, "SolarOnOpening"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Space,
    :schema_name => XSD::QName.new(NsSchema, "Space"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["lighting", ["BuildingSync::Lighting[]", XSD::QName.new(NsSchema, "Lighting")], [0, nil]],
      ["lightingControl", ["BuildingSync::LightingControl[]", XSD::QName.new(NsSchema, "LightingControl")], [0, nil]],
      ["infiltrationFlow", ["BuildingSync::InfiltrationFlow[]", XSD::QName.new(NsSchema, "InfiltrationFlow")], [0, 1]],
      ["peopleNumber", ["BuildingSync::PeopleNumber[]", XSD::QName.new(NsSchema, "PeopleNumber")], [0, 1]],
      ["peopleHeatGain", ["BuildingSync::PeopleHeatGain[]", XSD::QName.new(NsSchema, "PeopleHeatGain")], [0, 3]],
      ["lightPowerPerArea", ["BuildingSync::LightPowerPerArea[]", XSD::QName.new(NsSchema, "LightPowerPerArea")], [0, 1]],
      ["equipPowerPerArea", ["BuildingSync::EquipPowerPerArea[]", XSD::QName.new(NsSchema, "EquipPowerPerArea")], [0, 1]],
      ["airChangesPerHour", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "AirChangesPerHour")], [0, 1]],
      ["area", ["BuildingSync::Area[]", XSD::QName.new(NsSchema, "Area")]],
      ["temperature", ["BuildingSync::Temperature[]", XSD::QName.new(NsSchema, "Temperature")], [0, 1]],
      ["volume", ["BuildingSync::Volume[]", XSD::QName.new(NsSchema, "Volume")]],
      ["planarGeometry", ["BuildingSync::PlanarGeometry[]", XSD::QName.new(NsSchema, "PlanarGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["airLoopId", ["BuildingSync::AirLoopId[]", XSD::QName.new(NsSchema, "AirLoopId")], [0, nil]],
      ["hydronicLoopId", ["BuildingSync::HydronicLoopId[]", XSD::QName.new(NsSchema, "HydronicLoopId")], [0, nil]],
      ["meterId", ["BuildingSync::MeterId[]", XSD::QName.new(NsSchema, "MeterId")], [0, nil]],
      ["intEquipId", ["BuildingSync::IntEquipId[]", XSD::QName.new(NsSchema, "IntEquipId")], [0, nil]],
      ["airLoopEquipmentId", ["BuildingSync::AirLoopEquipmentId[]", XSD::QName.new(NsSchema, "AirLoopEquipmentId")], [0, nil]],
      ["hydronicLoopEquipmentId", ["BuildingSync::HydronicLoopEquipmentId[]", XSD::QName.new(NsSchema, "HydronicLoopEquipmentId")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]],
      ["typeCode", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "TypeCode")], [0, 1]],
      ["spaceBoundary", ["BuildingSync::SpaceBoundary[]", XSD::QName.new(NsSchema, "SpaceBoundary")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "spaceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "zoneIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "lightScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "equipmentScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "peopleScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "conditionType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "buildingStoreyIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::SpaceBoundary,
    :schema_name => XSD::QName.new(NsSchema, "SpaceBoundary"),
    :schema_element => [ :choice,
      ["planarGeometry", ["BuildingSync::PlanarGeometry", XSD::QName.new(NsSchema, "PlanarGeometry")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString",
      XSD::QName.new(nil, "isSecondLevelBoundary") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "surfaceIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "oppositeIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::SpecificHeat,
    :schema_name => XSD::QName.new(NsSchema, "SpecificHeat"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::StationId,
    :schema_name => XSD::QName.new(NsSchema, "StationId"),
    :schema_attribute => {
      XSD::QName.new(nil, "IDType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::SupplementalHeatingCoilType,
    :schema_name => XSD::QName.new(NsSchema, "SupplementalHeatingCoilType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Surface,
    :schema_name => XSD::QName.new(NsSchema, "Surface"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["familyName", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "FamilyName")], [0, 1]],
      ["adjacentSpaceId", ["BuildingSync::AdjacentSpaceId[]", XSD::QName.new(NsSchema, "AdjacentSpaceId")], [1, 2]],
      ["rectangularGeometry", ["BuildingSync::RectangularGeometry[]", XSD::QName.new(NsSchema, "RectangularGeometry")]],
      ["planarGeometry", ["BuildingSync::PlanarGeometry[]", XSD::QName.new(NsSchema, "PlanarGeometry")]],
      ["opening", ["BuildingSync::Opening[]", XSD::QName.new(NsSchema, "Opening")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "surfaceType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "constructionIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "scheduleShadeIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "exposedToSun") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::Temp,
    :schema_name => XSD::QName.new(NsSchema, "Temp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "tempType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Temperature,
    :schema_name => XSD::QName.new(NsSchema, "Temperature"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::TemperatureControl,
    :schema_name => XSD::QName.new(NsSchema, "TemperatureControl"),
    :schema_element => [ :choice,
      ["designTemp", ["BuildingSync::DesignTemp[]", XSD::QName.new(NsSchema, "DesignTemp")], [0, 1]],
      ["minTemp", ["BuildingSync::MinTemp[]", XSD::QName.new(NsSchema, "MinTemp")], [0, 1]],
      ["maxTemp", ["BuildingSync::MaxTemp[]", XSD::QName.new(NsSchema, "MaxTemp")], [0, 1]],
      ["resetTemperature", ["BuildingSync::ResetTemperature[]", XSD::QName.new(NsSchema, "ResetTemperature")], [0, 1]]
    ]
  )

  Registry.register(
    :class => BuildingSync::Thickness,
    :schema_name => XSD::QName.new(NsSchema, "Thickness"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::TimeIncrement,
    :schema_name => XSD::QName.new(NsSchema, "TimeIncrement"),
    :schema_attribute => {
      XSD::QName.new(nil, "timeUnit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Transmittance,
    :schema_name => XSD::QName.new(NsSchema, "Transmittance"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "surfaceType") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Transportation,
    :schema_name => XSD::QName.new(NsSchema, "Transportation"),
    :schema_element => [ :choice,
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "transportationType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "scheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::UtilityRate,
    :schema_name => XSD::QName.new(NsSchema, "UtilityRate"),
    :schema_element => []
  )

  Registry.register(
    :class => BuildingSync::UValue,
    :schema_name => XSD::QName.new(NsSchema, "U-value"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Vegetation,
    :schema_name => XSD::QName.new(NsSchema, "Vegetation"),
    :schema_element => [ :choice,
      ["generalGeometry", ["BuildingSync::GeneralGeometry[]", XSD::QName.new(NsSchema, "GeneralGeometry")], [0, 1]],
      ["shellGeometry", ["BuildingSync::ShellGeometry[]", XSD::QName.new(NsSchema, "ShellGeometry")], [0, 1]],
      ["waterRate", ["BuildingSync::WaterRate[]", XSD::QName.new(NsSchema, "WaterRate")], [0, 1]],
      ["biomassDensity", ["BuildingSync::BiomassDensity[]", XSD::QName.new(NsSchema, "BiomassDensity")], [0, 1]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "vegetationType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "waterScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "waterMeterIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "shadeScheduleIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Viscosity,
    :schema_name => XSD::QName.new(NsSchema, "Viscosity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::ViscosityFofT,
    :schema_name => XSD::QName.new(NsSchema, "ViscosityFofT"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Volume,
    :schema_name => XSD::QName.new(NsSchema, "Volume"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WasteWaterHREff,
    :schema_name => XSD::QName.new(NsSchema, "WasteWaterHREff"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "airLoopIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "hydronicLoopIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterLoss,
    :schema_name => XSD::QName.new(NsSchema, "WaterLoss"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterRate,
    :schema_name => XSD::QName.new(NsSchema, "WaterRate"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WaterUsePerCycle,
    :schema_name => XSD::QName.new(NsSchema, "WaterUsePerCycle"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::HeatRejectedtoSpace,
    :schema_name => XSD::QName.new(NsSchema, "HeatRejectedtoSpace"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Weather,
    :schema_name => XSD::QName.new(NsSchema, "Weather"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["location", ["BuildingSync::Location_[]", XSD::QName.new(NsSchema, "Location")]],
      ["city", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "City")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "StateOrProvince")], [0, 1]],
      ["country", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Country")], [0, 1]],
      ["hDD", ["BuildingSync::HDD[]", XSD::QName.new(NsSchema, "HDD")], [0, nil]],
      ["cDD", ["BuildingSync::CDD[]", XSD::QName.new(NsSchema, "CDD")], [0, nil]],
      ["dDDBCool", ["BuildingSync::DDDBCool[]", XSD::QName.new(NsSchema, "DDDBCool")], [0, 1]],
      ["dDHiHrCool", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "DDHiHrCool")], [0, 1]],
      ["dDWBCool", ["BuildingSync::DDWBCool[]", XSD::QName.new(NsSchema, "DDWBCool")], [0, 1]],
      ["dDDBRangeCool", ["BuildingSync::DDDBRangeCool[]", XSD::QName.new(NsSchema, "DDDBRangeCool")], [0, 1]],
      ["dDLoHrCool", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "DDLoHrCool")], [0, 1]],
      ["dDPressureCool", ["BuildingSync::DDPressureCool[]", XSD::QName.new(NsSchema, "DDPressureCool")], [0, 1]],
      ["dDWindSpeedCool", ["BuildingSync::DDWindSpeedCool[]", XSD::QName.new(NsSchema, "DDWindSpeedCool")], [0, 1]],
      ["dDWindDirCool", ["BuildingSync::DDWindDirCool[]", XSD::QName.new(NsSchema, "DDWindDirCool")], [0, 1]],
      ["dDSkyClearnessCool", ["BuildingSync::DDSkyClearnessCool[]", XSD::QName.new(NsSchema, "DDSkyClearnessCool")], [0, 1]],
      ["dDRainCool", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDRainCool")], [0, 1]],
      ["dDSnowCool", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDSnowCool")], [0, 1]],
      ["dDMonthCool", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDMonthCool")], [0, 1]],
      ["dDDayCool", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDDayCool")], [0, 1]],
      ["dDDaylightCool", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDDaylightCool")], [0, 1]],
      ["dDGroundTCool", ["BuildingSync::DDGroundTCool[]", XSD::QName.new(NsSchema, "DDGroundTCool")], [0, 1]],
      ["dDDBHeat", ["BuildingSync::DDDBHeat[]", XSD::QName.new(NsSchema, "DDDBHeat")], [0, 1]],
      ["dDHiHrHeat", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "DDHiHrHeat")], [0, 1]],
      ["dDWBHeat", ["BuildingSync::DDWBHeat[]", XSD::QName.new(NsSchema, "DDWBHeat")], [0, 1]],
      ["dDDBRangeHeat", ["BuildingSync::DDDBRangeHeat[]", XSD::QName.new(NsSchema, "DDDBRangeHeat")], [0, 1]],
      ["dDLoHrHeat", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "DDLoHrHeat")], [0, 1]],
      ["dDPressureHeat", ["BuildingSync::DDPressureHeat[]", XSD::QName.new(NsSchema, "DDPressureHeat")], [0, 1]],
      ["dDWindSpeedHeat", ["BuildingSync::DDWindSpeedHeat[]", XSD::QName.new(NsSchema, "DDWindSpeedHeat")], [0, 1]],
      ["dDWindDirHeat", ["BuildingSync::DDWindDirHeat[]", XSD::QName.new(NsSchema, "DDWindDirHeat")], [0, 1]],
      ["dDSkyClearnessHeat", ["BuildingSync::DDSkyClearnessHeat[]", XSD::QName.new(NsSchema, "DDSkyClearnessHeat")], [0, 1]],
      ["dDRainHeat", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDRainHeat")], [0, 1]],
      ["dDSnowHeat", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDSnowHeat")], [0, 1]],
      ["dDMonthHeat", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDMonthHeat")], [0, 1]],
      ["dDDayHeat", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDDayHeat")], [0, 1]],
      ["dDDaylightHeat", ["SOAP::SOAPInteger[]", XSD::QName.new(NsSchema, "DDDaylightHeat")], [0, 1]],
      ["dDGroundTHeat", ["BuildingSync::DDGroundTHeat[]", XSD::QName.new(NsSchema, "DDGroundTHeat")], [0, 1]],
      ["groundTemp", ["BuildingSync::GroundTemp[]", XSD::QName.new(NsSchema, "GroundTemp")], [0, 1]],
      ["wFTDTemp", ["BuildingSync::WFTDTemp[]", XSD::QName.new(NsSchema, "WFTDTemp")], [0, 1]],
      ["wFTDRelHumidity", ["BuildingSync::WFTDRelHumidity[]", XSD::QName.new(NsSchema, "WFTDRelHumidity")], [0, 1]],
      ["wFTDWindSpeed", ["BuildingSync::WFTDWindSpeed[]", XSD::QName.new(NsSchema, "WFTDWindSpeed")], [0, 1]],
      ["wFTDWindDir", ["BuildingSync::WFTDWindDir[]", XSD::QName.new(NsSchema, "WFTDWindDir")], [0, 1]],
      ["wFTDPressure", ["BuildingSync::WFTDPressure[]", XSD::QName.new(NsSchema, "WFTDPressure")], [0, 1]],
      ["reference", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Reference")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::WeekSchedule,
    :schema_name => XSD::QName.new(NsSchema, "WeekSchedule"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["day", ["BuildingSync::Day[]", XSD::QName.new(NsSchema, "Day")], [1, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleType") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "scheduleTypeLimitsId") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::WeekScheduleId,
    :schema_name => XSD::QName.new(NsSchema, "WeekScheduleId"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "weekScheduleIdRef") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::Weight,
    :schema_name => XSD::QName.new(NsSchema, "Weight"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WFTDPressure,
    :schema_name => XSD::QName.new(NsSchema, "WFTDPressure"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WFTDRelHumidity,
    :schema_name => XSD::QName.new(NsSchema, "WFTDRelHumidity"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WFTDTemp,
    :schema_name => XSD::QName.new(NsSchema, "WFTDTemp"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WFTDWindDir,
    :schema_name => XSD::QName.new(NsSchema, "WFTDWindDir"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WFTDWindSpeed,
    :schema_name => XSD::QName.new(NsSchema, "WFTDWindSpeed"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WindSpeed,
    :schema_name => XSD::QName.new(NsSchema, "WindSpeed"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN",
      XSD::QName.new(nil, "type") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Width,
    :schema_name => XSD::QName.new(NsSchema, "Width"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::WindowType,
    :schema_name => XSD::QName.new(NsSchema, "WindowType"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["u_value", ["BuildingSync::UValue[]", XSD::QName.new(NsSchema, "U-value")], [0, 1]],
      ["shadingCoeff", ["BuildingSync::ShadingCoeff[]", XSD::QName.new(NsSchema, "ShadingCoeff")], [0, 1]],
      ["solarHeatGainCoeff", ["BuildingSync::SolarHeatGainCoeff[]", XSD::QName.new(NsSchema, "SolarHeatGainCoeff")], [0, nil]],
      ["transmittance", ["BuildingSync::Transmittance[]", XSD::QName.new(NsSchema, "Transmittance")], [0, nil]],
      ["reflectance", ["BuildingSync::Reflectance[]", XSD::QName.new(NsSchema, "Reflectance")], [0, nil]],
      ["emittance", ["BuildingSync::Emittance[]", XSD::QName.new(NsSchema, "Emittance")], [0, nil]],
      ["blind", ["BuildingSync::Blind[]", XSD::QName.new(NsSchema, "Blind")], [0, nil]],
      ["frame", ["BuildingSync::Frame[]", XSD::QName.new(NsSchema, "Frame")], [0, nil]],
      ["gap", ["BuildingSync::Gap[]", XSD::QName.new(NsSchema, "Gap")], [0, nil]],
      ["glaze", ["BuildingSync::Glaze[]", XSD::QName.new(NsSchema, "Glaze")], [0, nil]],
      ["cost", ["BuildingSync::Cost[]", XSD::QName.new(NsSchema, "Cost")], [0, nil]],
      ["extEquipId", ["BuildingSync::ExtEquipId[]", XSD::QName.new(NsSchema, "ExtEquipId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "DOELibIdRef") => "SOAP::SOAPString",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::XAxis,
    :schema_name => XSD::QName.new(NsSchema, "XAxis"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString",
      XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::YAxis,
    :schema_name => XSD::QName.new(NsSchema, "YAxis"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString",
      XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::YearModeled,
    :schema_name => XSD::QName.new(NsSchema, "YearModeled"),
    :schema_element => [ :choice,
      ["beginDate", ["SOAP::SOAPDate[]", XSD::QName.new(NsSchema, "BeginDate")]],
      ["endDate", ["SOAP::SOAPDate[]", XSD::QName.new(NsSchema, "EndDate")]],
      ["holidaysModeled", ["BuildingSync::HolidaysModeled[]", XSD::QName.new(NsSchema, "HolidaysModeled")]]
    ]
  )

  Registry.register(
    :class => BuildingSync::YearSchedule,
    :schema_name => XSD::QName.new(NsSchema, "YearSchedule"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["beginDate", ["SOAP::SOAPDate[]", XSD::QName.new(NsSchema, "BeginDate")]],
      ["endDate", ["SOAP::SOAPDate[]", XSD::QName.new(NsSchema, "EndDate")]],
      ["weekScheduleId", ["BuildingSync::WeekScheduleId[]", XSD::QName.new(NsSchema, "WeekScheduleId")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "scheduleTypeLimitsId") => "SOAP::SOAPString"
    }
  )

  Registry.register(
    :class => BuildingSync::HolidaysModeled,
    :schema_name => XSD::QName.new(NsSchema, "HolidaysModeled"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSchema, "Name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["holidayDate", ["SOAP::SOAPDate", XSD::QName.new(NsSchema, "HolidayDate")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID"
    }
  )

  Registry.register(
    :class => BuildingSync::Zone,
    :schema_name => XSD::QName.new(NsSchema, "Zone"),
    :schema_element => [ :choice,
      ["name", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Name")], [0, 1]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "Description")], [0, 1]],
      ["flow", ["BuildingSync::Flow[]", XSD::QName.new(NsSchema, "Flow")], [0, 1]],
      ["secondaryFlow", ["BuildingSync::SecondaryFlow[]", XSD::QName.new(NsSchema, "SecondaryFlow")], [0, 1]],
      ["airChangesPerHour", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "AirChangesPerHour")], [0, 1]],
      ["flowPerArea", ["BuildingSync::FlowPerArea[]", XSD::QName.new(NsSchema, "FlowPerArea")], [0, 1]],
      ["flowPerPerson", ["BuildingSync::FlowPerPerson[]", XSD::QName.new(NsSchema, "FlowPerPerson")], [0, 1]],
      ["oAFlowPerArea", ["BuildingSync::OAFlowPerArea[]", XSD::QName.new(NsSchema, "OAFlowPerArea")], [0, 1]],
      ["oAFlowPerPerson", ["BuildingSync::OAFlowPerPerson[]", XSD::QName.new(NsSchema, "OAFlowPerPerson")], [0, 1]],
      ["oAFlowPerZone", ["BuildingSync::OAFlowPerZone[]", XSD::QName.new(NsSchema, "OAFlowPerZone")], [0, 1]],
      ["maxOAFlowPerZone", ["BuildingSync::MaxOAFlowPerZone[]", XSD::QName.new(NsSchema, "MaxOAFlowPerZone")], [0, 1]],
      ["minOAFlowPerZone", ["BuildingSync::MinOAFlowPerZone[]", XSD::QName.new(NsSchema, "MinOAFlowPerZone")], [0, 1]],
      ["minimumOutdoorAirControlType", ["BuildingSync::MinimumOutdoorAirControlType[]", XSD::QName.new(NsSchema, "MinimumOutdoorAirControlType")], [0, 1]],
      ["designHeatT", ["BuildingSync::DesignHeatT[]", XSD::QName.new(NsSchema, "DesignHeatT")], [0, 1]],
      ["designCoolT", ["BuildingSync::DesignCoolT[]", XSD::QName.new(NsSchema, "DesignCoolT")], [0, 1]],
      ["indoorAirQuality", ["BuildingSync::IndoorAirQuality[]", XSD::QName.new(NsSchema, "IndoorAirQuality")], [0, 1]],
      ["hydronicLoopId", ["BuildingSync::HydronicLoopId[]", XSD::QName.new(NsSchema, "HydronicLoopId")], [0, nil]],
      ["airLoopId", ["BuildingSync::AirLoopId[]", XSD::QName.new(NsSchema, "AirLoopId")], [0, nil]],
      ["cADObjectId", ["BuildingSync::CADObjectId[]", XSD::QName.new(NsSchema, "CADObjectId")], [0, nil]],
      ["typeCode", ["SOAP::SOAPString[]", XSD::QName.new(NsSchema, "TypeCode")], [0, 1]],
      ["coolingSizingFactor", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "CoolingSizingFactor")], [0, 1]],
      ["heatingSizingFactor", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "HeatingSizingFactor")], [0, 1]],
      ["baseboardHeatingType", ["BuildingSync::BaseboardHeatingType[]", XSD::QName.new(NsSchema, "BaseboardHeatingType")], [0, 1]],
      ["baseboardHeatingCapacity", ["SOAP::SOAPDecimal[]", XSD::QName.new(NsSchema, "BaseboardHeatingCapacity")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPID",
      XSD::QName.new(nil, "heatSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "coolSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "outAirSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "airChangesSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "fanSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "fanTempSchedIdRef") => "SOAP::SOAPIDREF",
      XSD::QName.new(nil, "ifcGUID") => "SOAP::SOAPString",
      XSD::QName.new(nil, "programId") => "SOAP::SOAPIDREF"
    }
  )

  Registry.register(
    :class => BuildingSync::ZoneCoolingLoad,
    :schema_name => XSD::QName.new(NsSchema, "ZoneCoolingLoad"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPNMTOKEN"
    }
  )

  Registry.register(
    :class => BuildingSync::Source,
    :schema_name => XSD::QName.new(NsC_2019, "Source")
  )

  Registry.register(
    :class => BuildingSync::Status,
    :schema_name => XSD::QName.new(NsC_2019, "Status")
  )
end
