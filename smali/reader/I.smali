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
    .line 1008
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/I;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 1009
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    .locals 4

    .prologue
    .line 1015
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1019
    :goto_0
    return-object v0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1019
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1006
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/I;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1006
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;

    .line 2024
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/I;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V

    .line 2025
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/I;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;Z)V

    .line 1006
    return-void
.end method
