up: 
	@cd terraform && terraform init
	@cd terraform && terraform apply --auto-approve

output:
	@chmod +x scripts/output.sh && ./scripts/output.sh

output-dev:
	@chmod +x scripts/output-dev.sh && ./scripts/output-dev.sh
	
output-prod:
	@chmod +x scripts/output-prod.sh && ./scripts/output-prod.sh
	