.class final Lcom/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/a/a/d;


# direct methods
.method public constructor <init>(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p2, p0, Lcom/a/a/p;->a:Landroid/content/Context;

    .line 779
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v1}, Lcom/a/a/d;->a(Lcom/a/a/d;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->e()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 785
    iget-object v0, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->b(Lcom/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/a/a/p;

    iget-object v2, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/a/a/p;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    .line 786
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/q;->f()I

    move-result v2

    int-to-long v2, v2

    .line 785
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 794
    :try_start_0
    const-string v2, "appkey"

    iget-object v3, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v3}, Lcom/a/a/d;->c(Lcom/a/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v2, "gid"

    iget-object v3, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v3}, Lcom/a/a/d;->d(Lcom/a/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v2, "v"

    const-string v3, "1.1.1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v2, "requests"

    iget-object v3, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v3}, Lcom/a/a/d;->a(Lcom/a/a/d;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/q;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    const-string v1, "BfdAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 809
    const/4 v1, 0x0

    .line 811
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 824
    :goto_2
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_6

    .line 826
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 828
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 829
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 830
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 845
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 846
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 847
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    .line 848
    const-string v3, "http://m.api.baifendian.com/multi"

    .line 847
    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 849
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v3, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    iget-object v4, p0, Lcom/a/a/p;->a:Landroid/content/Context;

    invoke-static {v3, v4, v2, v1}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;

    move-result-object v1

    .line 851
    if-eqz v1, :cond_3

    .line 853
    :try_start_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 854
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 855
    if-nez v1, :cond_3

    .line 856
    const/4 v0, 0x1

    .line 863
    :cond_3
    :goto_4
    if-eqz v0, :cond_5

    .line 864
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 865
    const-string v0, "BfdAgent"

    const-string v1, "requests were successfully sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v1}, Lcom/a/a/d;->a(Lcom/a/a/d;Lorg/json/JSONArray;)V

    .line 868
    iget-object v0, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/p;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;)V

    .line 870
    :cond_5
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->e()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 871
    iget-object v0, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->b(Lcom/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/a/a/p;

    iget-object v2, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/a/a/p;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    .line 872
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/q;->f()I

    move-result v2

    int-to-long v2, v2

    .line 871
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 800
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/a/a/p;->b:Lcom/a/a/d;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v2, v3}, Lcom/a/a/d;->a(Lcom/a/a/d;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    .line 834
    :cond_6
    :try_start_4
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 836
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 837
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 838
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method
