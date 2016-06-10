.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private items:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->items:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    return-object v0
.end method
