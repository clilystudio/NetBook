package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class ChargeType
  implements Serializable
{
  private static final long serialVersionUID = 690267482403879770L;
  private ChargePlan[] plan;
  private String type;

  public ChargePlan[] getPlan()
  {
    return this.plan;
  }

  public String getType()
  {
    return this.type;
  }

  public void setPlan(ChargePlan[] paramArrayOfChargePlan)
  {
    this.plan = paramArrayOfChargePlan;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChargeType
 * JD-Core Version:    0.6.2
 */