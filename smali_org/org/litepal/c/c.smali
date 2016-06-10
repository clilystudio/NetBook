.class public final Lorg/litepal/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/litepal/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lorg/litepal/c/c;->a:Lorg/litepal/c/c;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lorg/litepal/c/c;

    invoke-direct {v0}, Lorg/litepal/c/c;-><init>()V

    sput-object v0, Lorg/litepal/c/c;->a:Lorg/litepal/c/c;

    .line 97
    :cond_0
    sget-object v0, Lorg/litepal/c/c;->a:Lorg/litepal/c/c;

    .line 1112
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 1114
    new-instance v1, Lorg/litepal/c/b;

    invoke-direct {v1}, Lorg/litepal/c/b;-><init>()V

    .line 1115
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1116
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-static {}, Lorg/litepal/c/c;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1117
    return-void

    .line 1119
    :catch_0
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 1120
    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    .line 1119
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :catch_1
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 1123
    const-string v1, "can not parse the litepal.xml, check if it\'s in correct format"

    .line 1122
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :catch_2
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 1126
    const-string v1, "parse configuration is failed"

    .line 1125
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :catch_3
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "IO exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 188
    invoke-static {}, Lorg/litepal/LitePalApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 189
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 191
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 197
    :cond_0
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 198
    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    .line 197
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    aget-object v4, v2, v0

    .line 192
    const-string v5, "litepal.xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    const/4 v0, 0x3

    invoke-virtual {v1, v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
