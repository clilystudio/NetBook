.class final Lcom/ushaqi/zhuishushenqi/reader/cK;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation
# instance fields
.field private a:I
.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;
# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;I)V
    .locals 1
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->b = p1;
    v0 = 0x7f05006a;
    p0.<init>(p2, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->a = p3;
    return;
.end method
.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    :try_start_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v1 = 0x0;
    v1 = p1[v1];
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->a;
    v0.b(v1, v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .prologue
    check-cast p1, [Ljava/lang/String;
    v0 = p0.a(p1);
    return v0;
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .prologue
    check-cast p1, Ljava/lang/String;
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity.a(v0, v1, p1);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/cK;->b;
    v1 = "\u8f7d\u5165\u5931\u8d25";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    goto :goto_0
.end method
