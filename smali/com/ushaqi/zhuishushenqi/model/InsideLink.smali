.class public Lcom/ushaqi/zhuishushenqi/model/InsideLink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private final mType:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;-><init>(Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mType:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 18
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mValue:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p3}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->setLabel(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mType:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->mLabel:Ljava/lang/String;

    .line 36
    return-void
.end method
