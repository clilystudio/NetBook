.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;->result:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;

    return-object v0
.end method

.method public setResult([Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;->result:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;

    .line 22
    return-void
.end method
