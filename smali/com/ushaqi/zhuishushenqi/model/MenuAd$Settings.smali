.class public Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x218fd62a954a6fccL


# instance fields
.field private readerMenuPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReaderMenuPriority()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;->readerMenuPriority:I

    return v0
.end method

.method public setReaderMenuPriority(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;->readerMenuPriority:I

    .line 117
    return-void
.end method
