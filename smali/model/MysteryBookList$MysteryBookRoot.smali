.class public Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private book:Lcom/ushaqi/zhuishushenqi/model/MysteryBook;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;

.field private toc:Lcom/ushaqi/zhuishushenqi/model/MysteryToc;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->this$0:Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/ushaqi/zhuishushenqi/model/MysteryBook;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->book:Lcom/ushaqi/zhuishushenqi/model/MysteryBook;

    return-object v0
.end method

.method public getToc()Lcom/ushaqi/zhuishushenqi/model/MysteryToc;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->toc:Lcom/ushaqi/zhuishushenqi/model/MysteryToc;

    return-object v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/MysteryBook;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->book:Lcom/ushaqi/zhuishushenqi/model/MysteryBook;

    .line 41
    return-void
.end method

.method public setToc(Lcom/ushaqi/zhuishushenqi/model/MysteryToc;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->toc:Lcom/ushaqi/zhuishushenqi/model/MysteryToc;

    .line 49
    return-void
.end method
