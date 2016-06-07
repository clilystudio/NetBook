package com.ximalaya.ting.android.opensdk.player.service;

public class XmAdsEvents
{
  private XmAdsRecord mAdsRecord;

  public XmAdsEvents(XmAdsRecord paramXmAdsRecord)
  {
    this.mAdsRecord = paramXmAdsRecord;
  }

  public String toJsonString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"events\"").append(":[").append("{\"viewId\"").append(":\"\"").append(",\"parentSpanId\"").append(":\"\"").append(",\"seqId\"").append(":0").append(",\"spanId\"").append(":\"0\"").append(",\"traceId\"").append(":\"0\"").append(",\"ts\"").append(":").append(System.currentTimeMillis()).append(",\"type\"").append(":\"AD\"").append(",\"props\"").append(":").append(this.mAdsRecord.toJsonString()).append("}]").append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsEvents
 * JD-Core Version:    0.6.0
 */