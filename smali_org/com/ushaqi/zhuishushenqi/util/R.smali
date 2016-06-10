.class public abstract Lcom/ushaqi/zhuishushenqi/util/R;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 1

    .prologue
    .line 12
    .line 1016
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->X(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    move-result-object v0

    .line 12
    return-object v0
.end method
