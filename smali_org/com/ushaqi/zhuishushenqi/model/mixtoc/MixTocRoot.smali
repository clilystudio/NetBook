.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixTocRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mixToc:Lcom/ushaqi/zhuishushenqi/model/Toc;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMixToc()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixTocRoot;->mixToc:Lcom/ushaqi/zhuishushenqi/model/Toc;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixTocRoot;->ok:Z

    return v0
.end method

.method public setMixToc(Lcom/ushaqi/zhuishushenqi/model/Toc;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixTocRoot;->mixToc:Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 30
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixTocRoot;->ok:Z

    .line 22
    return-void
.end method
