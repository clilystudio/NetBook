.class public Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private book:Ljava/lang/String;

.field private bookName:Ljava/lang/String;

.field private chapterTitle:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->book:Ljava/lang/String;

    return-object v0
.end method

.method public getBookName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->bookName:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->chapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->price:I

    return v0
.end method

.method public setBook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->book:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setBookName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->bookName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setChapterTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->chapterTitle:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->price:I

    .line 193
    return-void
.end method
