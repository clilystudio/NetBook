.class final Lcom/ushaqi/zhuishushenqi/f;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Lcom/umeng/a/a/a;
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/MyApplication;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/MyApplication;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/f;->a = p1;
    p0.<init>();
    return;
.end method
# virtual methods
.method public final a()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/f;->a;
    v1 = "set_default_api";
    v0 = Lcom/umeng/a/b.b(v0, v1);
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0);
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/f;->a;
    v1 = "reader_web_url";
    v0 = Lcom/umeng/a/b.b(v0, v1);
    v1 = 0x4;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.j(v0, v1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new H();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/f;->a;
    v2 = Lcom/arcsoft/hpay100/a/a.x(v2);
    v1.<init>(v2);
    v0.c(v1);
    return;
.end method
