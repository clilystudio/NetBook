package com.clilystudio.app.netbook.model;

public class VipPlan
{
  private boolean ok;
  private VipPlan.Plan[] plans;

  public VipPlan.Plan[] getPlans()
  {
    return this.plans;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setPlans(VipPlan.Plan[] paramArrayOfPlan)
  {
    this.plans = paramArrayOfPlan;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.VipPlan
 * JD-Core Version:    0.6.2
 */