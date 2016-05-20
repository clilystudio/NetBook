.class final Lcom/ushaqi/zhuishushenqi/widget/as;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/as;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 155
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/widget/as;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 150
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1164
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1166
    if-eqz p1, :cond_4

    .line 1168
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1175
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;IZ)V

    .line 1176
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;I)V

    .line 1177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bc4\u4ef7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1184
    :cond_0
    :goto_1
    return-void

    .line 1173
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1181
    :cond_2
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0501a1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1183
    :cond_3
    const-string v0, "ALREADY_SET"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u7ecf\u8bc4\u4ef7\u8fc7\u5566"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1190
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/as;->a:Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bc4\u4ef7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
