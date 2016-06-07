.class public final Lcom/ushaqi/zhuishushenqi/event/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/l;->a:Z

    .line 14
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/l;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/l;->a:Z

    return v0
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/l;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    return-object v0
.end method
