.class public Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookID:Ljava/lang/String;

.field private checksum:Ljava/lang/String;

.field private tocID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->bookID:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getTocID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->tocID:Ljava/lang/String;

    return-object v0
.end method

.method public setBookID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->bookID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->checksum:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTocID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->tocID:Ljava/lang/String;

    .line 26
    return-void
.end method
