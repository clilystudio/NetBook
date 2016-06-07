.class final Lcom/ushaqi/zhuishushenqi/ui/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ct;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ct;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    new-array v0, v0, [B

    .line 240
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/v;->a([B)V

    .line 242
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/cs;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/cs;->b:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 243
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ct;->a:[Ljava/lang/Boolean;

    aget-object v1, v1, v4

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/cs;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/cs;->c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/io/File;)V

    .line 247
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ct;->a:[Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/cs;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/cs;->c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/io/File;[B)V

    .line 251
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->add(Lcom/ushaqi/zhuishushenqi/db/BookFile;)Z

    .line 253
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cu;->a:Lcom/ushaqi/zhuishushenqi/ui/ct;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/cs;

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/ui/cs;->a:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/ui/cs;->a:I

    .line 254
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->j()V

    .line 255
    return-void
.end method
