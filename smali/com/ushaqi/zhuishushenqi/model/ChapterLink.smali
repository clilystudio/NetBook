.class public Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4f23c0e6bd16a2dcL


# instance fields
.field private currency:I

.field private id:Ljava/lang/String;

.field private isVip:Z

.field private link:Ljava/lang/String;

.field private mEasouIndex:I

.field private mLeidianTk:Ljava/lang/String;

.field private mSosoIndex:I

.field private mTxtCharLength:I

.field private mTxtCharOffset:I

.field private mTxtLineOffset:I

.field private title:Ljava/lang/String;

.field private unreadble:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->unreadble:Z

    return-void
.end method


# virtual methods
.method public getCurrency()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->currency:I

    return v0
.end method

.method public getEasouIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mEasouIndex:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLeidianTk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mLeidianTk:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSosoIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mSosoIndex:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtCharLength()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtCharLength:I

    return v0
.end method

.method public getTxtCharOffset()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtCharOffset:I

    return v0
.end method

.method public getTxtLineOffset()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtLineOffset:I

    return v0
.end method

.method public getUnreadble()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->unreadble:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip:Z

    return v0
.end method

.method public setCurrency(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->currency:I

    .line 119
    return-void
.end method

.method public setEasouIndex(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mEasouIndex:I

    .line 87
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setIsVip(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip:Z

    .line 111
    return-void
.end method

.method public setLeidianTk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mLeidianTk:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->link:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSosoIndex(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mSosoIndex:I

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTxtCharLength(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtCharLength:I

    .line 59
    return-void
.end method

.method public setTxtCharOffset(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtCharOffset:I

    .line 79
    return-void
.end method

.method public setTxtLineOffset(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->mTxtLineOffset:I

    .line 71
    return-void
.end method

.method public setUnreadble(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->unreadble:Z

    .line 55
    return-void
.end method
