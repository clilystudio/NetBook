.class final Lcom/ushaqi/zhuishushenqi/reader/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cw;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aw;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aw;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 1155
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aw;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1162
    :cond_0
    if-eqz p1, :cond_1

    .line 1167
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aw;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0
.end method
