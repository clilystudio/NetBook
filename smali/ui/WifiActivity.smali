.class public Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/koushikdutta/async/http/server/a;

.field private c:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 43
    .line 2274
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2275
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2276
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2281
    :goto_0
    return-void

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2279
    :catch_1
    move-exception v0

    .line 2280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/io/File;[B)V
    .locals 2

    .prologue
    .line 43
    .line 2286
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2287
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2288
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2293
    :goto_0
    return-void

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2291
    :catch_1
    move-exception v0

    .line 2292
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->setContentView(I)V

    .line 55
    const-string v0, "Wi-Fi\u4f20\u4e66"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/koushikdutta/async/http/server/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/server/a;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    .line 59
    const v0, 0x7f0c018c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->c:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->e:Landroid/widget/TextView;

    .line 1101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1102
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->f()Ljava/util/List;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 1110
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/files/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/cm;

    invoke-direct {v4, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/cm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/a;->a()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 66
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 1126
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v3, v0

    .line 1127
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "wifi_transfer_v1"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "wifi_transfer_v1/scripts"

    aput-object v1, v4, v0

    .line 1129
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    :try_start_0
    aget-object v5, v4, v2

    .line 1130
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1132
    const/4 v0, 0x0

    .line 1133
    const-string v10, "index.css"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1134
    const-string v0, "text/css"

    .line 1137
    :cond_0
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/ushaqi/zhuishushenqi/ui/cn;

    invoke-direct {v11, p0, v9, v0}, Lcom/ushaqi/zhuishushenqi/ui/cn;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1129
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const-string v1, "/"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/co;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/co;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 1171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const-string v1, "/files"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cp;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/cp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 1187
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const-string v1, "/send_file_name"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cq;

    invoke-direct {v2, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/cq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/a;->b(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 1201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const-string v1, "/delete_file"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cr;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/cr;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/a;->b(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 1223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const-string v1, "/files"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cs;

    invoke-direct {v2, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/cs;-><init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/a;->b(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 1269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->b:Lcom/koushikdutta/async/http/server/a;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/a;->a(I)Lcom/koushikdutta/async/r;

    .line 70
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u672a\u8fde\u63a5\u5230 Wi-Fi"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u672a\u8fde\u63a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_3
    :goto_2
    return-void

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "http://"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2028
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2029
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":5000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onStop()V

    .line 97
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 98
    return-void
.end method
