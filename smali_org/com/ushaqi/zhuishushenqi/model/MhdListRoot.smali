.class public Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private code_msg:Ljava/lang/String;

.field private info:[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->code:I

    return v0
.end method

.method public getCode_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->code_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->info:[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->code:I

    .line 29
    return-void
.end method

.method public setCode_msg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->code_msg:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setInfo([Lcom/ushaqi/zhuishushenqi/model/MhdInfo;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->info:[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    .line 37
    return-void
.end method
