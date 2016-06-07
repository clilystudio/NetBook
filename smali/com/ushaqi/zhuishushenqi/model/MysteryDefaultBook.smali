.class public Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;
.super Lcom/ushaqi/zhuishushenqi/model/MysteryBook;
.source "SourceFile"


# instance fields
.field private defaultTocId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->defaultTocId:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->defaultTocId:Ljava/lang/String;

    .line 16
    return-void
.end method
