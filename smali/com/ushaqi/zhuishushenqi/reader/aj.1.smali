.class final Lcom/ushaqi/zhuishushenqi/reader/aj;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/g;
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a = p1;
    p0.<init>();
    return;
.end method
# virtual methods
.method public final a()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.b(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.c(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.d(v1);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v1 = "\u6253\u5f00\u9875\u5c3e";
    Lcom/arcsoft/hpay100/a/a.q(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.e(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.e(v0);
    v0 = v0.b();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v1 = new StringBuilder();
    v2 = "\u9875\u5c3e\u5e7f\u544a-";
    v1.<init>(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.e(v2);
    v2 = v2.b();
    v1 = v1.append(v2);
    v1 = v1.toString();
    Lcom/arcsoft/hpay100/a/a.q(v0, v1);
    v0 = new UmengGameTracer();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Reader;
    v0.<init>(v1, v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/aj;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.e(v1);
    v1 = v1.a();
    v0.a(v1);
    :cond_0
    return;
.end method
