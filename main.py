# vpc: ec2.Vpc

zone = route53.PrivateHostedZone(self, "HostedZone",
    zone_name="*.genomics-sandbox.aws.myriad.com",
    vpc=vpc
)

route53.DsRecord(self, "DSRecord",
    zone= zone,
    record_name="test",
    values=["12345 3 1 123456789abcdef67890123456789abcdef67890"
    ],
    ttl=Duration.minutes(90)
)