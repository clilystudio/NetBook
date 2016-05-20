.class public Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field favorite:Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getFavorite()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;->favorite:Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;

    return-object v0
.end method
