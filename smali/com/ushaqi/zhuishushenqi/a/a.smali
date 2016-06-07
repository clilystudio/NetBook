.class public abstract Lcom/ushaqi/zhuishushenqi/a/a;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f05006a

    invoke-direct {p0, p1, v0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;IZ)V

    .line 23
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    .locals 2

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/a/a;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected abstract a(Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;

    .line 1037
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->getSources()[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/a;->a(Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;)V

    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/a/a;->a()V

    goto :goto_0
.end method
