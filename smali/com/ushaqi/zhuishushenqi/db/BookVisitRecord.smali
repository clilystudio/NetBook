.class public Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookVisitRecord"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private hasGroup:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "hasGroup"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;->bookId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public hasGroup()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;->hasGroup:Z

    return v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;->bookId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setHasGroup(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookVisitRecord;->hasGroup:Z

    .line 43
    return-void
.end method
