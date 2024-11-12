{ pkgs, ... }:

{
	home.packages = with pkgs; [
		localsend
	];
	
	home.file.".local/share/org.localsend.localsend_app/shared_preferences.json" = {
		enable = true;
		text = ''
			{
				"flutter.ls_version":2,
				"flutter.ls_show_token":"345b473f-5cc8-40fb-b3f5-bb90c396fd1d",
				"flutter.ls_alias":"Kuaaro's Framework",
				"flutter.ls_color":"system",
				"flutter.ls_window_offset_x":26.0,
				"flutter.ls_window_offset_y":23.0,
				"flutter.ls_window_height":600.0,
				"flutter.ls_window_width":900.0,
				"flutter.ls_auto_finish":true,
				"flutter.ls_port":53317,
				"flutter.ls_receive_history":[],
				"flutter.ls_destination":"/home/kuaaro/LocalSend",
				"flutter.ls_advanced_settings":true,
				"flutter.ls_save_to_history":false
			}
		'';
		#owner = "kuaaro";
		#group = "users";
		#mode = "0644";
	};
	#programs = {
	#	localsend = {
	#		enable = true;
	#		openFirewall = true;
	#	};
	#};
	
	#networking.firewall = {
	#	enable = true;
	#	allowedTCPPorts = [
	#		53317
	#	];
	#	allowedUDPPorts = [
	#		53317
	#	];
	#};
}

#"flutter.ls_security_context":"{\"privateKey\":\"-----BEGIN RSA PRIVATE KEY-----\\nMIIEpAIBAAKCAQEAoya1ggZOJdqKmhmzqqol3ZoQoLDCTRvuGbYEVfgd8/luNYo+\\nHujsds+dZQk1BaRzmu3wQL7z1uBfc6JkCo22K2m5qLesIT5guGEUxb2i3UtKJKNh\\n4bib1xNMm1lNDy14lPP5aD3GfNhsJxD0PakoFQhEQzZjPTPCFnCSA2eEzWnnICPZ\\nzp8zxuNRn9TMHLOKDZjmNDehuoCJtgx0vyq7zrxTIW+R+NwZVKKDlJykqYpSENAV\\nBt4vOgZlsdhJANil0/spUGOdbFmppI8FTBu3FqYBajy938q6LOy842hBZU9ibi6R\\nFwmAapY3rnZjvaa5/p9jZTbFdS9LX7s9rVCVbwIDAQABAoIBAG4UHf8etfeAXmfe\\n04RgzK+Z1YI2AML6B0o9rus6PytvrdZd8c/1JCZ9qhqTfbzS2lU8GQ/2RptCQ+TH\\nOmyMdM8RxHx7gJ3lcmi0x8krTAm3VM0nl1Eut6cDlHp0ZDPLYEJP4oVcuOFfPImX\\nPNOloC+gpj4bIhYXJ+rwBPRbEhVtOOqQwHkbfR2L97AHIG8L/DJnqqlHYB5bGDCC\\nSa3oiLJA2HG/74QM5qpAg0LGRC61sNc9jN6qfvneJnMqnt29vZij7HLPOtMaAm6T\\nAdR9IuH8O+OpdbmuIIXn730Z/sPtQaoje7WxxOhpVJYgSmz6gXy7hHnJmtXBiIth\\nxRO7kYECgYEA8tJ/Tny8D9Pk9Bv1gJH2o6UZBnVzzExdKHmNjMi+0qvsbyQfS4P9\\npdGpvVRjNvB4DDZQnIBbPFxaF84QBQ92PWDQmJKCAC26CfMXfOZOovrm1chly2JC\\nUK9KmTFl1lU+LkaX+qIGSrbXhB1/fO1Fk221Up7JyfVLeR1H8CSXVI8CgYEArAFZ\\nxctrrbu1j54SH8ultjDl4PeSQYWONFjKwk56gh/rg5dG+0YxDTdRwwZDOwBUSY2r\\nRgRAYhR+OsbdA8gXFynCGt/4w0SjyIphJfS6AvcI7eqv1kERdbrEjkMtpLQVYtg7\\nEXcrU9dZVUgatlZDE8oS8aegB9W8BcfiiiQz4SECgYBh4q9FQY1CSCYMrdSqzqyB\\nTYWoD+LtYX9QWKfSL/6UyI+YQhSHiZ7PoJRvaTxRomCSc7bNUAT3cTc0T3IvyArf\\nNU8BolXbopNTfXZjeCgNFV3GonE+qs6W3gMRfFNUMqrNVtHfTD+DEPASJx4Ei1W3\\n18r3kmFAE60oFsCwMt/6SwKBgQCpPzL8Yyry6i6+wEUJMDNAUGEBudkZy7afX3cz\\nNlFpVMtC0kmv2eNOI8653aGtnqdRMKsE3A4V9CA46ZBztiCyVA6Arz1xtkqKe08Y\\nL/QQEs+gezrF0YTCmSHq8cMpu2EHv8hvaRkjCFUIi0htfffGsyFs0wmua+r0rTgF\\nwZWiwQKBgQDiWOtCegHsA5zgTZJsuSJYUiUg/aD931WEnRifnCKbcJt985h8WJtl\\nKdo8hDXHPScEHUcrU+wEpwY79MRTOag2AtMThocLF++yWndBKdM+iFle8F8eu/Uq\\n9X1mtkkoBpqPSbTFx/3arQsSdUeErNjXnc4ZIjTVxNfkTeSnHFW8gQ==\\n-----END RSA PRIVATE KEY-----\",\"publicKey\":\"-----BEGIN RSA PUBLIC KEY-----\\nMIIBCgKCAQEAoya1ggZOJdqKmhmzqqol3ZoQoLDCTRvuGbYEVfgd8/luNYo+Hujs\\nds+dZQk1BaRzmu3wQL7z1uBfc6JkCo22K2m5qLesIT5guGEUxb2i3UtKJKNh4bib\\n1xNMm1lNDy14lPP5aD3GfNhsJxD0PakoFQhEQzZjPTPCFnCSA2eEzWnnICPZzp8z\\nxuNRn9TMHLOKDZjmNDehuoCJtgx0vyq7zrxTIW+R+NwZVKKDlJykqYpSENAVBt4v\\nOgZlsdhJANil0/spUGOdbFmppI8FTBu3FqYBajy938q6LOy842hBZU9ibi6RFwmA\\napY3rnZjvaa5/p9jZTbFdS9LX7s9rVCVbwIDAQAB\\n-----END RSA PUBLIC KEY-----\",\"certificate\":\"-----BEGIN CERTIFICATE-----\\nMIIDGTCCAgGgAwIBAgIBATANBgkqhkiG9w0BAQsFADBQMRcwFQYDVQQDEw5Mb2Nh\\r\\nbFNlbmQgVXNlcjEJMAcGA1UEChMAMQkwBwYDVQQLEwAxCTAHBgNVBAcTADEJMAcG\\r\\nA1UECBMAMQkwBwYDVQQGEwAwHhcNMjQwODI2MTIxNTQzWhcNMzQwODI0MTIxNTQz\\r\\nWjBQMRcwFQYDVQQDEw5Mb2NhbFNlbmQgVXNlcjEJMAcGA1UEChMAMQkwBwYDVQQL\\r\\nEwAxCTAHBgNVBAcTADEJMAcGA1UECBMAMQkwBwYDVQQGEwAwggEiMA0GCSqGSIb3\\r\\nDQEBAQUAA4IBDwAwggEKAoIBAQCjJrWCBk4l2oqaGbOqqiXdmhCgsMJNG+4ZtgRV\\r\\n+B3z+W41ij4e6Ox2z51lCTUFpHOa7fBAvvPW4F9zomQKjbYrabmot6whPmC4YRTF\\r\\nvaLdS0oko2HhuJvXE0ybWU0PLXiU8/loPcZ82GwnEPQ9qSgVCERDNmM9M8IWcJID\\r\\nZ4TNaecgI9nOnzPG41Gf1Mwcs4oNmOY0N6G6gIm2DHS/KrvOvFMhb5H43BlUooOU\\r\\nnKSpilIQ0BUG3i86BmWx2EkA2KXT+ylQY51sWamkjwVMG7cWpgFqPL3fyros7Lzj\\r\\naEFlT2JuLpEXCYBqljeudmO9prn+n2NlNsV1L0tfuz2tUJVvAgMBAAEwDQYJKoZI\\r\\nhvcNAQELBQADggEBABGf9KXF2cXKbKX8l3Juf4OpVG31FKSTTkATY6GwTJmtkrCv\\r\\nqHkCEz9Mbgm1Aobbu9HUf+KmFbF7rhV5iQ8n4OFdWJ3FpW4xpZlJIQw9pmfvzUXm\\r\\nXFn+nf3kn59ATn2S3iK7QaP5gwfAlYkAA3XPxre0l13HNvacEWK3FLagtqyar2aw\\r\\nT0SdxRixVytV9VpSl6WU1ZMSZrKnYc78nywpjrRiXF3FnDADGeCEsxSn3J+N6+Rw\\r\\nkbu4TLXOvFDJRrZqUJHsoB37hxK65FXrm9noc8qIpk4gyYGEe6LPPFJp3MiGc7CY\\r\\n8Glh5CpxiyjQOcCIhATdVAtlfFPhT99vqdUlvDY=\\n-----END CERTIFICATE-----\",\"certificateHash\":\"D4C5642C3AFA80710CF8006303D95C6B5F5767CB1A309379992258C17AC01463\"}",
