.class public Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->size:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->name:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;->size:Ljava/lang/String;

    .line 21
    return-void
.end method
