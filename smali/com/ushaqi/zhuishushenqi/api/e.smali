.class public final Lcom/ushaqi/zhuishushenqi/api/e;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static a:Z
.field private static b:Lcom/ushaqi/zhuishushenqi/api/c;
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/c;->a()Lcom/ushaqi/zhuishushenqi/api/c;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/e;->b:Lcom/ushaqi/zhuishushenqi/api/c;
    return;
.end method
.method public static a(Lcom/github/kevinsawicki/http/HttpRequest;)V
    .locals 7
    .prologue
    v1 = 0x0;
    :try_start_0
    v2 = p0.a();
    v3 = v2.getHost();
    v0 = new Select();
    v0.<init>();
    v4 = Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;;
    v0 = v0.from(v4);
    v4 = "host = ?";
    v5 = 0x1;
    new-array v5, v5, [Ljava/lang/Object;
    v6 = 0x0;
    v5[v6] = v3;
    v0 = v0.where(v4, v5);
    v0 = v0.executeSingle();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v4 = v0.isExpired();
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    v0.delete();
    v0 = v1;
    :goto_0
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = "http://%s/d?dn=%s&ttl=1";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v4 = 0x0;
    v5 = "119.29.29.29";
    v1[v4] = v5;
    v4 = 0x1;
    v1[v4] = v3;
    v0 = Ljava/lang/String.format(v0, v1);
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = v0.d();
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v1 = new DnsParseFailedException();
    v2 = new StringBuilder();
    v2.<init>();
    v0 = v2.append(v0);
    v2 = " parse failed";
    v0 = v0.append(v2);
    v0 = v0.toString();
    v1.<init>(v0);
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    :cond_0
    :goto_1
    return;
    :cond_1
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = v1;
    goto :goto_0
    :cond_2
    :try_start_1
    v0 = v0.getIp();
    goto :goto_0
    :cond_3
    v1 = ",";
    v0 = v0.split(v1);
    v1 = 0x0;
    v1 = v0[v1];
    v4 = ";";
    v1 = v1.split(v4);
    v4 = 0x1;
    v0 = v0[v4];
    v0 = Ljava/lang/Integer.parseInt(v0);
    v4 = new d();
    v5 = 0x0;
    v1 = v1[v5];
    v4.<init>(v1, v0);
    v0 = v4.a();
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Lcom/ushaqi/zhuishushenqi/api/e;->b;
    v1.a(v4, v3);
    :cond_4
    v1 = v2.toString();
    v0 = v1.replace(v3, v0);
    v1 = new URL();
    v1.<init>(v0);
    p0.a(v1);
    v0 = "Host";
    p0.a(v0, v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    goto :goto_1
.end method
.method public static a(Z)V
    .locals 0
    .prologue
    sput-boolean p0, Lcom/ushaqi/zhuishushenqi/api/e;->a:Z
    return;
.end method
.method public static a()Z
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/api/e;->a;
    return v0
.end method
