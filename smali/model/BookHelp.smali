.class public Lcom/ushaqi/zhuishushenqi/model/BookHelp;
.super Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private shareLink:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->content:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->shareLink:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
