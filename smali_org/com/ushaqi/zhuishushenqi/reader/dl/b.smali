.class final Lcom/ushaqi/zhuishushenqi/reader/dl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/dl/d;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/reader/dl/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->d:Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->a:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->b:I

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->d:Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->a:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->b:I

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    .line 76
    return-void
.end method
