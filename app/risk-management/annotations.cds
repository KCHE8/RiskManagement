using RiskService as service from '../../srv/risk-service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Taitluuuuu}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : miti.descr,
            Label : '{i18n>MitiDescriptu}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Ownaaaah}',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Prioridicodoooooo}',
            Value : prio_code,
            Criticality : PrioCriticality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : bp.FullName,
            Label : '{i18n>Bpfullneimuuu}',
        },
    ]
);
annotate service.Risks with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'timeline',
            },
        ],
        Label : '{i18n>MitigationValueHelpu}',
    }
};
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio_code',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PrioCriticality',
                Value : PrioCriticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Risk Overview',
            ID : 'RiskOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Risk Details',
                    ID : 'RiskDetails',
                    Target : '@UI.FieldGroup#RiskDetails',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Mitigation Overview',
            ID : 'MitigationOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Mitigation Details',
                    ID : 'MitigationDetails',
                    Target : '@UI.FieldGroup#MitigationDetails',
                },],
        },]
);
annotate service.Risks with @(
    UI.SelectionFields : [
        prio_code,
        owner,
        miti_ID,
    ]
);
annotate service.Risks with {
    prio @Common.Label : '{i18n>PrioCodoooo}'
};
annotate service.Risks with {
    owner @Common.Label : '{i18n>Ownaaaa}'
};
annotate service.Risks with {
    miti @Common.Label : '{i18n>KfcMitigationId}'
};
annotate service.Risks with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : descr,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);
annotate service.Risks with @(
    UI.FieldGroup #RiskDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : '{i18n>Taitel}',
            },{
                $Type : 'UI.DataField',
                Value : owner,
            },{
                $Type : 'UI.DataField',
                Value : descr,
                Label : '{i18n>Riskdescriptu}',
            },{
                $Type : 'UI.DataField',
                Value : prio_code,
                Criticality : PrioCriticality,
            },{
                $Type : 'UI.DataField',
                Value : impact,
                Label : '{i18n>Impactu}',
                Criticality : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : bp.FullName,
                Label : '{i18n>Bipifuullnaiiiimmmmhh}',
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #MitigationDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : miti.ID,
                Label : '{i18n>Mitiaidi}',
                Criticality : PrioCriticality,
                CriticalityRepresentation : #WithIcon,
            },{
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : '{i18n>Mitiownaaaa}',
                Criticality : PrioCriticality,
                CriticalityRepresentation : #WithIcon,
            },{
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : '{i18n>Taimlainu}',
            },],
    }
);
annotate service.Risks with {
    miti @Common.Text : {
            $value : miti.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Risks with {
    miti @Common.ValueListWithFixedValues : true
};
annotate service.Mitigations with {
    ID @Common.Text : {
            $value : descr,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Mitigations with {
    owner @Common.FieldControl : #Mandatory
};
annotate service.Mitigations with {
    timeline @Common.FieldControl : #ReadOnly
};
annotate service.Mitigations with {
    ID @Common.FieldControl : #Mandatory
};

annotate service.Risks with {
    prio @Common.Text : {
            $value : prio.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
