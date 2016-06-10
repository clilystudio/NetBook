.class public abstract Lcom/ushaqi/zhuishushenqi/ui/post/f;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/CommentDetail;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 225
    const v0, 0x7f05006a

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 226
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    .locals 4

    .prologue
    .line 230
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 231
    const/4 v0, 0x1

    aget-object v2, p0, v0

    .line 232
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;-><init>()V

    .line 234
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->A(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/f;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/CommentDetail;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/ushaqi/zhuishushenqi/model/CommentDetail;)V
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;

    .line 1243
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/f;->a(Lcom/ushaqi/zhuishushenqi/model/CommentDetail;)V

    .line 222
    return-void
.end method
