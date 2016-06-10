.class public Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x12125fb03570d2faL


# instance fields
.field private ok:Z

.field private sources:[Lcom/ushaqi/zhuishushenqi/model/TocSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSources()[Lcom/ushaqi/zhuishushenqi/model/TocSource;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->sources:[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->ok:Z

    .line 24
    return-void
.end method

.method public setSources([Lcom/ushaqi/zhuishushenqi/model/TocSource;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->sources:[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    .line 32
    return-void
.end method
