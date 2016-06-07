package com.clilystudio.netbook.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.VipPlan
 * JD-Core Version:    0.6.0
 */