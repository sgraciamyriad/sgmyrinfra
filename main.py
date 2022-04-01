# vpc: ec2.Vpc

zone = route53.PrivateHostedZone(self, "HostedZone",
    zone_name="fully.qualified.domain.com",
    vpc=vpc
)