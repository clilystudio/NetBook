.class public final Lcom/ushaqi/zhuishushenqi/event/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/x;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    .line 21
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/event/x;->b:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/x;->b:Z

    return v0
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/x;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    return-object v0
.end method
