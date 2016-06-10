.class public Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field prom:Lcom/ushaqi/zhuishushenqi/model/BookSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    return-void
.end method


# virtual methods
.method public getProm()Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;->prom:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    return-object v0
.end method
