.class final Lcom/ushaqi/zhuishushenqi/ui/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# instance fields
.field a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cs;->c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cs;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cs;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/h;->b_()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/a/d;

    .line 230
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/ui/cs;->a:I

    .line 231
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 232
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ct;

    invoke-direct {v2, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ct;-><init>(Lcom/ushaqi/zhuishushenqi/ui/cs;Lcom/koushikdutta/async/http/a/d;[Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/http/a/g;)V

    .line 261
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cv;

    invoke-direct {v0, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/cv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/cs;Lcom/koushikdutta/async/http/server/l;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/server/h;->b(Lcom/koushikdutta/async/a/a;)V

    .line 267
    return-void
.end method
