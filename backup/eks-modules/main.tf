module "vpc" {
  source = "./vpc"
}

module "lt_sg" {
  source = "./lt_sg"

  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
}

module "eks" {
  source = "./eks"

  tfsub1     = module.vpc.tfsub1
  tfsub2     = module.vpc.tfsub2
  sgid       = module.lt_sg.sgid
  ltid       = module.lt_sg.ltid
  ltversion  = module.lt_sg.ltversion
  depends_on = [module.lt_sg, module.vpc]
}