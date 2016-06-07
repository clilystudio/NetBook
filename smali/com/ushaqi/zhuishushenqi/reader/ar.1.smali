.class final Lcom/ushaqi/zhuishushenqi/reader/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/ae;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ar;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ar;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1062
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ar;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ar;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1069
    :cond_0
    return-void
.end method
