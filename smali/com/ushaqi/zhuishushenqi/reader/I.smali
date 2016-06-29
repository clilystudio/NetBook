.class final Lcom/ushaqi/zhuishushenqi/reader/I;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;",
        ">;"
    }
.end annotation
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;
# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/I;->a = p1;
    p0.<init>(p2, p3);
    return;
.end method
.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    .locals 4
    .prologue
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v1 = 0x0;
    v1 = p0[v1];
    v2 = 0x1;
    v2 = p0[v2];
    v3 = 0x0;
    v0.a(v1, v2, v3);
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
    v0 = Lcom/ushaqi/zhuishushenqi/reader/I.a(p1);
    return v0;
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .prologue
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/I;->a;
    v1 = 0x1;
    Lcom/ushaqi/zhuishushenqi/reader/o.a(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/I;->a;
    v1 = 0x0;
    Lcom/ushaqi/zhuishushenqi/reader/o.a(v0, p1, v1);
    return;
.end method
